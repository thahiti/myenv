local pasteboard = require("hs.pasteboard")
local ov_copy

hs.alert.show('hammer spoon reloaded!')

function get_mail_id(data)
	local s, e, p = string.find(data, "https://outlook.office.com/mail/.*/id/(.*)")
	if p then
		return p
	end
end

function change_outlook_link()
	ov_copy:disable()
	hs.eventtap.keyStroke({'cmd'}, 'c')
	local data = pasteboard.getContents()

	local p = get_mail_id(data)

	if p then
		hs.alert.show("mail id detected")
		data = "https://outlook.office.com/owa/?ItemID=" .. p .. "&viewmodel=ReadMessageItem&path=&exvsurl=1"
		pasteboard.setContents(data)
	else
		hs.alert.show(data)
	end
	ov_copy:enable()
end

ov_copy = hs.hotkey.new({'cmd'}, 'c', jkj)
ov_copy:enable()
