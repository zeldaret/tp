lbl_800352B0:
/* 800352B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800352B4  7C 08 02 A6 */	mflr r0
/* 800352B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800352BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800352C0  93 C1 00 08 */	stw r30, 8(r1)
/* 800352C4  7C 7E 1B 78 */	mr r30, r3
/* 800352C8  7C 9F 23 78 */	mr r31, r4
/* 800352CC  2C 1F FF FF */	cmpwi r31, -1
/* 800352D0  41 82 00 78 */	beq lbl_80035348
/* 800352D4  2C 1F 00 FF */	cmpwi r31, 0xff
/* 800352D8  40 82 00 08 */	bne lbl_800352E0
/* 800352DC  48 00 00 6C */	b lbl_80035348
lbl_800352E0:
/* 800352E0  2C 1F 00 80 */	cmpwi r31, 0x80
/* 800352E4  40 80 00 10 */	bge lbl_800352F4
/* 800352E8  38 7E 09 58 */	addi r3, r30, 0x958
/* 800352EC  4B FF F5 4D */	bl offSwitch__12dSv_memBit_cFi
/* 800352F0  48 00 00 58 */	b lbl_80035348
lbl_800352F4:
/* 800352F4  2C 1F 00 C0 */	cmpwi r31, 0xc0
/* 800352F8  40 80 00 14 */	bge lbl_8003530C
/* 800352FC  38 7E 09 78 */	addi r3, r30, 0x978
/* 80035300  38 9F FF 80 */	addi r4, r31, -128
/* 80035304  4B FF F8 BD */	bl offSwitch__12dSv_danBit_cFi
/* 80035308  48 00 00 40 */	b lbl_80035348
lbl_8003530C:
/* 8003530C  7C A3 2B 78 */	mr r3, r5
/* 80035310  4B FF 86 A1 */	bl getZoneNo__20dStage_roomControl_cFi
/* 80035314  2C 1F 00 E0 */	cmpwi r31, 0xe0
/* 80035318  40 80 00 1C */	bge lbl_80035334
/* 8003531C  54 63 28 34 */	slwi r3, r3, 5
/* 80035320  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 80035324  7C 7E 1A 14 */	add r3, r30, r3
/* 80035328  38 9F FF 40 */	addi r4, r31, -192
/* 8003532C  4B FF FA 01 */	bl offSwitch__13dSv_zoneBit_cFi
/* 80035330  48 00 00 18 */	b lbl_80035348
lbl_80035334:
/* 80035334  54 63 28 34 */	slwi r3, r3, 5
/* 80035338  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8003533C  7C 7E 1A 14 */	add r3, r30, r3
/* 80035340  38 9F FF 20 */	addi r4, r31, -224
/* 80035344  4B FF FA 85 */	bl offOneSwitch__13dSv_zoneBit_cFi
lbl_80035348:
/* 80035348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003534C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80035350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035354  7C 08 03 A6 */	mtlr r0
/* 80035358  38 21 00 10 */	addi r1, r1, 0x10
/* 8003535C  4E 80 00 20 */	blr 
