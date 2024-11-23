*** Settings ***
Resource    ../3-Keywords/Register_Keywords.robot

Suite Setup    Open Browser To Register Page
Suite Teardown    Close Browser

Test Setup    Clear Register Form

*** Test Cases ***
TC-F1-001:
    [Documentation]    กรณี ไม่กรอกข้อมูลเลย
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-002:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ
    Enter Register Information    ${FirstName}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-003:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล
    Enter Register Information    ${EMPTY}    ${LastName}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-004:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล
    Enter Register Information    ${FirstName}    ${LastName}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-005:
    [Documentation]    กรณี กรอกข้อมูลแค่ อีเมล
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${Email}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-006:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ,อีเมล
    Enter Register Information    ${FirstName}    ${EMPTY}    ${Email}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-007:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, อีเมล
    Enter Register Information    ${EMPTY}    ${LastName}    ${Email}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-008:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, อีเมล
    Enter Register Information    ${FirstName}    ${LastName}    ${Email}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-009:
    [Documentation]    กรณี กรอกข้อมูลแค่ เบอร์โทรศัพท์
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${Phone}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-010:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, เบอร์โทรศัพท์
    Enter Register Information    ${FirstName}    ${EMPTY}    ${EMPTY}    ${Phone}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-011:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, เบอร์โทรศัพท์
    Enter Register Information    ${EMPTY}    ${LastName}    ${EMPTY}    ${Phone}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-012:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, เบอร์โทรศัพท์
    Enter Register Information    ${FirstName}    ${LastName}    ${EMPTY}    ${Phone}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-013:
    [Documentation]    กรณี กรอกข้อมูลแค่ อีเมล, เบอร์โทรศัพท์
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${Email}    ${Phone}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-014:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, อีเมล, เบอร์โทรศัพท์
    Enter Register Information    ${FirstName}    ${EMPTY}    ${Email}    ${Phone}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-015:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, อีเมล, เบอร์โทรศัพท์
    Enter Register Information    ${EMPTY}    ${LastName}    ${Email}    ${Phone}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-016:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, อีเมล, เบอร์โทรศัพท์
    Enter Register Information    ${FirstName}    ${LastName}    ${Email}    ${Phone}    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-017:
    [Documentation]    กรณี กรอกข้อมูลแค่ รหัสผ่าน
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-018:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, รหัสผ่าน
    Enter Register Information    ${FirstName}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-019:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, รหัสผ่าน
    Enter Register Information    ${EMPTY}    ${LastName}    ${EMPTY}    ${EMPTY}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-020:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, รหัสผ่าน
    Enter Register Information    ${FirstName}    ${LastName}    ${EMPTY}    ${EMPTY}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-021:
    [Documentation]    กรณี กรอกข้อมูลแค่ อีเมล, รหัสผ่าน
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${Email}    ${EMPTY}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-022:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, อีเมล, รหัสผ่าน
    Enter Register Information    ${FirstName}    ${EMPTY}    ${Email}    ${EMPTY}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-023:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, อีเมล, รหัสผ่าน
    Enter Register Information    ${EMPTY}    ${LastName}    ${Email}    ${EMPTY}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-024:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, อีเมล, รหัสผ่าน
    Enter Register Information    ${FirstName}    ${LastName}    ${Email}    ${EMPTY}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-025:
    [Documentation]    กรณี กรอกข้อมูลแค่ เบอร์โทรศัพท์, รหัสผ่าน
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${Phone}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-026:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, เบอร์โทรศัพท์, รหัสผ่าน
    Enter Register Information    ${FirstName}    ${EMPTY}    ${EMPTY}    ${Phone}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-027:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, เบอร์โทรศัพท์, รหัสผ่าน
    Enter Register Information    ${EMPTY}    ${LastName}    ${EMPTY}    ${Phone}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-028:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, เบอร์โทรศัพท์, รหัสผ่าน
    Enter Register Information    ${FirstName}    ${LastName}    ${EMPTY}    ${Phone}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-029:
    [Documentation]    กรณี กรอกข้อมูลแค่ อีเมล, เบอร์โทรศัพท์, รหัสผ่าน
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${Email}    ${Phone}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-030:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, อีเมล, เบอร์โทรศัพท์, รหัสผ่าน
    Enter Register Information    ${FirstName}    ${EMPTY}    ${Email}    ${Phone}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-031:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, อีเมล, เบอร์โทรศัพท์, รหัสผ่าน
    Enter Register Information    ${EMPTY}    ${LastName}    ${Email}    ${Phone}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-032:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, อีเมล, เบอร์โทรศัพท์, รหัสผ่าน
    Enter Register Information    ${FirstName}    ${LastName}    ${Email}    ${Phone}    ${Password}    ${EMPTY}
    Check Error Message
    Check Location After Register    Register

TC-F1-033:
    [Documentation]    กรณี กรอกข้อมูลแค่ ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-034:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-035:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${LastName}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-036:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${LastName}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-037:
    [Documentation]    กรณี กรอกข้อมูลแค่ อีเมล, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${Email}    ${EMPTY}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-038:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, อีเมล, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${EMPTY}    ${Email}    ${EMPTY}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-039:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, อีเมล, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${LastName}    ${Email}    ${EMPTY}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-040:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, อีเมล, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${LastName}    ${Email}    ${EMPTY}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-041:
    [Documentation]    กรณี กรอกข้อมูลแค่ เบอร์โทรศัพท์, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${Phone}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-042:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, เบอร์โทรศัพท์, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${EMPTY}    ${EMPTY}    ${Phone}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-043:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, เบอร์โทรศัพท์, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${LastName}    ${EMPTY}    ${Phone}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-044:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, เบอร์โทรศัพท์, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${LastName}    ${EMPTY}    ${Phone}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-045:
    [Documentation]    กรณี กรอกข้อมูลแค่ อีเมล, เบอร์โทรศัพท์, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${Email}    ${Phone}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-046:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, อีเมล, เบอร์โทรศัพท์, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${EMPTY}    ${Email}    ${Phone}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-047:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, อีเมล, เบอร์โทรศัพท์, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${LastName}    ${Email}    ${Phone}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-048:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, อีเมล, เบอร์โทรศัพท์, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${LastName}    ${Email}    ${Phone}    ${EMPTY}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-049:
    [Documentation]    กรณี กรอกข้อมูลแค่ รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-050:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-051:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${LastName}    ${EMPTY}    ${EMPTY}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-052:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${LastName}    ${EMPTY}    ${EMPTY}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-053:
    [Documentation]    กรณี กรอกข้อมูลแค่ อีเมล, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${Email}    ${EMPTY}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-054:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, อีเมล, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${EMPTY}    ${Email}    ${EMPTY}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-055:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, อีเมล, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${LastName}    ${Email}    ${EMPTY}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-056:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, อีเมล, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${LastName}    ${Email}    ${EMPTY}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-057:
    [Documentation]    กรณี กรอกข้อมูลแค่ เบอร์โทรศัพท์, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${Phone}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-058:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, เบอร์โทรศัพท์, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${EMPTY}    ${EMPTY}    ${Phone}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-059:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, เบอร์โทรศัพท์, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${LastName}    ${EMPTY}    ${Phone}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-060:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, เบอร์โทรศัพท์, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${LastName}    ${EMPTY}    ${Phone}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-061:
    [Documentation]    กรณี กรอกข้อมูลแค่ อีเมล, เบอร์โทรศัพท์, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${EMPTY}    ${Email}    ${Phone}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-062:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, อีเมล, เบอร์โทรศัพท์, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${EMPTY}    ${Email}    ${Phone}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-063:
    [Documentation]    กรณี กรอกข้อมูลแค่ นามสกุล, อีเมล, เบอร์โทรศัพท์, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${EMPTY}    ${LastName}    ${Email}    ${Phone}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-064:
    [Documentation]    กรณี กรอกข้อมูลแค่ ชื่อ, นามสกุล, อีเมล, เบอร์โทรศัพท์, รหัสผ่าน, ยืนยันรหัสผ่าน
    Enter Register Information    ${FirstName}    ${LastName}    ${Email}    ${Phone}    ${Password}    ${ConfirmPassword}

TC-F1-065:
    [Documentation]    กรณี กรอก 'รหัสผ่าน' ไม่ตรงกับ 'ยืนยันรหัสผ่าน'
    Enter Register Information    ${FirstName}    ${LastName}    ${Email}    ${Phone}    ${Invalid_Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-066:
    [Documentation]    กรณี กรอก 'อีเมล' ไม่ถูกต้องตามรูปแบบ โดยไม่มี '@'
    Enter Register Information    ${FirstName}    ${LastName}    ${Invalid_Email}    ${Phone}    ${Password}    ${ConfirmPassword}
    Check Error Message
    Check Location After Register    Register

TC-F1-067:
    [Documentation]    กรณี กดปุ่ม 'กลับไปเข้าสู่ระบบ' 
    Click Back to Login
    Check Location After Back to Login