// variables
let userName = null;
let state = 'SUCCESS';

// functions
function Message(arg) {
    this.text = arg.text;
    this.message_side = arg.message_side;

    this.draw = function (_this) {
        return function () {
            let $message;
            $message = $($('.message_template').clone().html());
            $message.addClass(_this.message_side).find('.text').html(_this.text);
            $('.messages').append($message);

            return setTimeout(function () {
                return $message.addClass('appeared');
            }, 0);
        };
    }(this);
    return this;
}

function getMessageText() {
    let $message_input;
    $message_input = $('.message_input');
    return $message_input.val();
}

function sendMessage(text, message_side) {
    let $messages, message;
    $('.message_input').val('');
    $messages = $('.messages');
    message = new Message({
        text: text,
        message_side: message_side
    });
    message.draw();
    $messages.animate({scrollTop: $messages.prop('scrollHeight')}, 300);
}

function greet() {
    setTimeout(function () {
        return sendMessage("안녕하세요! 탄소중립 도우미 CNA 입니다.🍀🌱", 'left');
    }, 1000);

    setTimeout(function () {
        return sendMessage("사용할 닉네임을 알려주세요.", 'left');
    }, 2000);
}

function onClickAsEnter(e) {
    if (e.keyCode === 13) {
        onSendButtonClicked()
    }
}

function setUserName(username) {

    if (username != null && username.replace(" ", "" !== "")) {
        setTimeout(function () {
            return sendMessage("반갑습니다." + username + "님. 닉네임이 설정되었습니다.😄", 'left');
        }, 1000);
        setTimeout(function () {
            return sendMessage("저는 일상에서 탄소중립 실천을 도와주는 CNA 챗봇 입니다.", 'left');
        }, 2000);
        setTimeout(function () {
            return sendMessage("그 외에도 날씨, 미세먼지, 여행지, 맛집 , 대여소 등등 관련 정보에 대해 무엇이든 물어보세요!😎", 'left');
        }, 3000);

        return username;

    } else {
        setTimeout(function () {
            return sendMessage("올바른 닉네임을 이용해주세요.", 'left');
        }, 1000);

        return null;
    }
}

function requestChat(messageText, url_pattern) {
    $.ajax({
        url: "http://127.0.0.1:8080/" + url_pattern + '/' + userName + '/' + messageText,
        type: "GET",
        dataType: "json",
        success: function (data) {
            state = data['state'];

            if (state === 'SUCCESS') {
                return sendMessage(data['answer'], 'left');
            } else if (state === 'REQUIRE_LOCATION') {
                return sendMessage('어느 지역을 알려드릴까요?', 'left');
            } else {
                return sendMessage('죄송합니다. 무슨말인지 잘 모르겠어요..', 'left');
            }
        },

        error: function (request, status, error) {
            console.log(error);

            return sendMessage('죄송합니다. 서버 연결에 실패했습니다.', 'left');
        }
    });
}

function onSendButtonClicked() {
    let messageText = getMessageText();
    sendMessage(messageText, 'right');

    if (userName == null) {
        userName = setUserName(messageText);

    } else {
        if (messageText.includes('안녕')) {
            setTimeout(function () {
                return sendMessage("안녕하세요. 저는 탄소중립 실천 도우미 CNA 챗봇 입니다.", 'left');
            }, 1000);
        } else if (messageText.includes('고마워')) {
            setTimeout(function () {
                return sendMessage("천만에요. 더 물어보실 건 없나요?", 'left');
            }, 1000);
        } else if (messageText.includes('없어')) {
            setTimeout(function () {
                return sendMessage("그렇군요. 알겠습니다!", 'left');
            }, 1000);
        }
        else if (messageText.includes('탄소중립 방법 뭐가 있을까')) {
            setTimeout(function () {
                return sendMessage("호오.. 탄소중립에 대해 궁금하시군요❓❔ 가정 , 학교 , 직장 , 매장 , 식당 등에서 실천할 수 있는 여러 방법들을 알려드려요, 질문해주세요!😎", 'left');
            }, 1000);
        }
        else if (messageText.includes('탄소중립이 뭐야?')) {
            setTimeout(function () {
                return sendMessage("CNA 챗봇이 탄소중립에 대해 알려드릴께요~ 인간의 활동에 의한 온실가스 배출을 최대한 줄이고, 남은 온실가스는 흡수(산림 등), 제거해서 실질적인 배출량이 0(Zero)가 되는 개념입니다. 즉 배출되는 탄소와 흡수되는 탄소량을 같게 해 탄소 ‘순배출이 0’이 되게 하는 것을 뜻합니다!", 'left');
            }, 1000);
        }
        else if (messageText.includes('자동차 타면 탄소배출')) {
            setTimeout(function () {
                return sendMessage("자동차의 평균 탄소배출량은 자동차(가솔린) 208g/km 입니다..🙄! 자동차 대신 자전거를 이용해보시는게 어떠세요? 한 사람이 자동차를 자전거로 전환 시 이산화탄소 감축효과는 연간 최소 1,145kg ~ 연간 최대 2,889kg 으로 이는 큰 나무 🌳 250그루가 1년간 흡수하는 양입니다.", 'left');
            }, 1000);
        }
        else if (messageText.includes('탄소중립 왜')) {
            setTimeout(function () {
                return sendMessage("지구온난화의 주범 탄소를 줄이기 위해 정부는 국제사회의 변화에 발맞추어 2050탄소 중립을 목표로 나아가려고 노력중이예요..! 기후변화로 부터 우리 지구를 지킬 수 있는 방안이 시급하답니다 ..😥", 'left');
            }, 1000);
        }
        else if (messageText.includes('야')) {
            setTimeout(function () {
                return sendMessage("네 부르셨나요❓❔", 'left');
            }, 1000);
        }
        else if (messageText.includes('꺼져')||messageText.includes('ㅅㅂ')||messageText.includes('ㅂㅅ')||messageText.includes('바보')) {
            setTimeout(function () {
                return sendMessage("그런 말은 하지 마세요..저 상처 받아요 ㅠㅠ", 'left');
            }, 1000);
        }
        else if (state.includes('REQUIRE')) {
            return requestChat(messageText, 'fill_slot');
        } else {
            return requestChat(messageText, 'request_chat');
        }
    }
}