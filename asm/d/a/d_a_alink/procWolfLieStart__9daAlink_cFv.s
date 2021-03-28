lbl_8013753C:
/* 8013753C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80137540  7C 08 02 A6 */	mflr r0
/* 80137544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80137548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013754C  93 C1 00 08 */	stw r30, 8(r1)
/* 80137550  7C 7E 1B 78 */	mr r30, r3
/* 80137554  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 80137558  4B FC 13 A1 */	bl decideCrawlDoStatus__9daAlink_cFv
/* 8013755C  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 80137560  2C 00 00 00 */	cmpwi r0, 0
/* 80137564  41 82 00 24 */	beq lbl_80137588
/* 80137568  7F E3 FB 78 */	mr r3, r31
/* 8013756C  48 02 6F 61 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80137570  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80137574  41 82 00 A4 */	beq lbl_80137618
/* 80137578  7F C3 F3 78 */	mr r3, r30
/* 8013757C  38 80 00 01 */	li r4, 1
/* 80137580  48 00 00 B5 */	bl procWolfLieMoveInit__9daAlink_cFi
/* 80137584  48 00 00 94 */	b lbl_80137618
lbl_80137588:
/* 80137588  7F C3 F3 78 */	mr r3, r30
/* 8013758C  38 80 00 00 */	li r4, 0
/* 80137590  4B FF FC 6D */	bl checkWolfLieContinue__9daAlink_cFi
/* 80137594  2C 03 00 00 */	cmpwi r3, 0
/* 80137598  40 82 00 10 */	bne lbl_801375A8
/* 8013759C  7F C3 F3 78 */	mr r3, r30
/* 801375A0  4B FF FD 15 */	bl checkNextActionWolfFromLie__9daAlink_cFv
/* 801375A4  48 00 00 74 */	b lbl_80137618
lbl_801375A8:
/* 801375A8  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 801375AC  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 801375B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801375B4  40 81 00 3C */	ble lbl_801375F0
/* 801375B8  7F E3 FB 78 */	mr r3, r31
/* 801375BC  48 02 6F 11 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801375C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801375C4  40 82 00 1C */	bne lbl_801375E0
/* 801375C8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 801375CC  3C 60 80 39 */	lis r3, m__19daAlinkHIO_wlLie_c0@ha
/* 801375D0  38 63 F1 38 */	addi r3, r3, m__19daAlinkHIO_wlLie_c0@l
/* 801375D4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801375D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801375DC  40 81 00 14 */	ble lbl_801375F0
lbl_801375E0:
/* 801375E0  7F C3 F3 78 */	mr r3, r30
/* 801375E4  38 80 00 00 */	li r4, 0
/* 801375E8  48 00 00 4D */	bl procWolfLieMoveInit__9daAlink_cFi
/* 801375EC  48 00 00 2C */	b lbl_80137618
lbl_801375F0:
/* 801375F0  38 00 00 04 */	li r0, 4
/* 801375F4  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 801375F8  7F C3 F3 78 */	mr r3, r30
/* 801375FC  38 80 00 00 */	li r4, 0
/* 80137600  4B FF FD 31 */	bl setWolfLieMoveVoice__9daAlink_cFi
/* 80137604  7F C3 F3 78 */	mr r3, r30
/* 80137608  4B F7 D4 01 */	bl setTalkStatus__9daAlink_cFv
/* 8013760C  7F C3 F3 78 */	mr r3, r30
/* 80137610  38 80 00 01 */	li r4, 1
/* 80137614  4B F8 05 E5 */	bl orderTalk__9daAlink_cFi
lbl_80137618:
/* 80137618  38 60 00 01 */	li r3, 1
/* 8013761C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80137620  83 C1 00 08 */	lwz r30, 8(r1)
/* 80137624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80137628  7C 08 03 A6 */	mtlr r0
/* 8013762C  38 21 00 10 */	addi r1, r1, 0x10
/* 80137630  4E 80 00 20 */	blr 
