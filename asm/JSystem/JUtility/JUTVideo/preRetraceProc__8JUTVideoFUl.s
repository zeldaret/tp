lbl_802E4E50:
/* 802E4E50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E4E54  7C 08 02 A6 */	mflr r0
/* 802E4E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E4E5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E4E60  80 8D 8F B8 */	lwz r4, sManager__8JUTVideo(r13)
/* 802E4E64  28 04 00 00 */	cmplwi r4, 0
/* 802E4E68  41 82 02 0C */	beq lbl_802E5074
/* 802E4E6C  81 84 00 24 */	lwz r12, 0x24(r4)
/* 802E4E70  28 0C 00 00 */	cmplwi r12, 0
/* 802E4E74  41 82 00 0C */	beq lbl_802E4E80
/* 802E4E78  7D 89 03 A6 */	mtctr r12
/* 802E4E7C  4E 80 04 21 */	bctrl 
lbl_802E4E80:
/* 802E4E80  48 05 D8 95 */	bl OSGetTick
/* 802E4E84  80 0D 8F BC */	lwz r0, sVideoLastTick__8JUTVideo(r13)
/* 802E4E88  7C 00 18 50 */	subf r0, r0, r3
/* 802E4E8C  90 0D 8F C0 */	stw r0, sVideoInterval__8JUTVideo(r13)
/* 802E4E90  90 6D 8F BC */	stw r3, sVideoLastTick__8JUTVideo(r13)
/* 802E4E94  83 ED 8F D0 */	lwz r31, sManager__6JUTXfb(r13)
/* 802E4E98  28 1F 00 00 */	cmplwi r31, 0
/* 802E4E9C  40 82 00 14 */	bne lbl_802E4EB0
/* 802E4EA0  38 60 00 01 */	li r3, 1
/* 802E4EA4  48 06 89 9D */	bl VISetBlack
/* 802E4EA8  48 06 87 ED */	bl VIFlush
/* 802E4EAC  48 00 01 C8 */	b lbl_802E5074
lbl_802E4EB0:
/* 802E4EB0  88 0D 8F CC */	lbz r0, data_8045154C(r13)
/* 802E4EB4  7C 00 07 75 */	extsb. r0, r0
/* 802E4EB8  40 82 00 14 */	bne lbl_802E4ECC
/* 802E4EBC  38 00 00 00 */	li r0, 0
/* 802E4EC0  90 0D 8F C8 */	stw r0, frameBuffer(r13)
/* 802E4EC4  38 00 00 01 */	li r0, 1
/* 802E4EC8  98 0D 8F CC */	stb r0, data_8045154C(r13)
lbl_802E4ECC:
/* 802E4ECC  80 8D 8F C8 */	lwz r4, frameBuffer(r13)
/* 802E4ED0  28 04 00 00 */	cmplwi r4, 0
/* 802E4ED4  41 82 00 1C */	beq lbl_802E4EF0
/* 802E4ED8  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 802E4EDC  80 C3 00 04 */	lwz r6, 4(r3)
/* 802E4EE0  80 6D 8F A8 */	lwz r3, sDirectPrint__14JUTDirectPrint(r13)
/* 802E4EE4  A0 A6 00 04 */	lhz r5, 4(r6)
/* 802E4EE8  A0 C6 00 06 */	lhz r6, 6(r6)
/* 802E4EEC  4B FF F6 81 */	bl changeFrameBuffer__14JUTDirectPrintFPvUsUs
lbl_802E4EF0:
/* 802E4EF0  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 802E4EF4  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802E4EF8  28 00 00 01 */	cmplwi r0, 1
/* 802E4EFC  40 82 00 38 */	bne lbl_802E4F34
/* 802E4F00  80 83 00 30 */	lwz r4, 0x30(r3)
/* 802E4F04  2C 04 00 00 */	cmpwi r4, 0
/* 802E4F08  40 81 00 08 */	ble lbl_802E4F10
/* 802E4F0C  38 84 FF FF */	addi r4, r4, -1
lbl_802E4F10:
/* 802E4F10  90 83 00 30 */	stw r4, 0x30(r3)
/* 802E4F14  30 04 FF FF */	addic r0, r4, -1
/* 802E4F18  7C 00 21 10 */	subfe r0, r0, r4
/* 802E4F1C  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 802E4F20  98 03 00 2C */	stb r0, 0x2c(r3)
/* 802E4F24  38 60 00 01 */	li r3, 1
/* 802E4F28  48 06 89 19 */	bl VISetBlack
/* 802E4F2C  48 06 87 69 */	bl VIFlush
/* 802E4F30  48 00 01 44 */	b lbl_802E5074
lbl_802E4F34:
/* 802E4F34  28 1F 00 00 */	cmplwi r31, 0
/* 802E4F38  40 82 00 14 */	bne lbl_802E4F4C
/* 802E4F3C  38 60 00 01 */	li r3, 1
/* 802E4F40  48 06 89 01 */	bl VISetBlack
/* 802E4F44  48 06 87 51 */	bl VIFlush
/* 802E4F48  48 00 01 2C */	b lbl_802E5074
lbl_802E4F4C:
/* 802E4F4C  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 802E4F50  2C 00 00 03 */	cmpwi r0, 3
/* 802E4F54  41 82 00 0C */	beq lbl_802E4F60
/* 802E4F58  2C 00 00 02 */	cmpwi r0, 2
/* 802E4F5C  40 82 00 80 */	bne lbl_802E4FDC
lbl_802E4F60:
/* 802E4F60  88 0D 8F C4 */	lbz r0, data_80451544(r13)
/* 802E4F64  28 00 00 00 */	cmplwi r0, 0
/* 802E4F68  40 82 01 0C */	bne lbl_802E5074
/* 802E4F6C  A8 1F 00 16 */	lha r0, 0x16(r31)
/* 802E4F70  7C 03 07 35 */	extsh. r3, r0
/* 802E4F74  B0 1F 00 18 */	sth r0, 0x18(r31)
/* 802E4F78  40 80 00 14 */	bge lbl_802E4F8C
/* 802E4F7C  38 60 00 01 */	li r3, 1
/* 802E4F80  48 06 88 C1 */	bl VISetBlack
/* 802E4F84  48 06 87 11 */	bl VIFlush
/* 802E4F88  48 00 00 EC */	b lbl_802E5074
lbl_802E4F8C:
/* 802E4F8C  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 802E4F90  7C 60 07 35 */	extsh. r0, r3
/* 802E4F94  41 80 00 10 */	blt lbl_802E4FA4
/* 802E4F98  54 60 10 3A */	slwi r0, r3, 2
/* 802E4F9C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 802E4FA0  48 00 00 08 */	b lbl_802E4FA8
lbl_802E4FA4:
/* 802E4FA4  38 60 00 00 */	li r3, 0
lbl_802E4FA8:
/* 802E4FA8  48 06 88 1D */	bl VISetNextFrameBuffer
/* 802E4FAC  48 06 86 E9 */	bl VIFlush
/* 802E4FB0  38 60 00 00 */	li r3, 0
/* 802E4FB4  48 06 88 8D */	bl VISetBlack
/* 802E4FB8  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 802E4FBC  7C 60 07 35 */	extsh. r0, r3
/* 802E4FC0  41 80 00 10 */	blt lbl_802E4FD0
/* 802E4FC4  54 60 10 3A */	slwi r0, r3, 2
/* 802E4FC8  7C 1F 00 2E */	lwzx r0, r31, r0
/* 802E4FCC  48 00 00 08 */	b lbl_802E4FD4
lbl_802E4FD0:
/* 802E4FD0  38 00 00 00 */	li r0, 0
lbl_802E4FD4:
/* 802E4FD4  90 0D 8F C8 */	stw r0, frameBuffer(r13)
/* 802E4FD8  48 00 00 9C */	b lbl_802E5074
lbl_802E4FDC:
/* 802E4FDC  2C 00 00 01 */	cmpwi r0, 1
/* 802E4FE0  40 82 00 94 */	bne lbl_802E5074
/* 802E4FE4  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 802E4FE8  2C 00 00 00 */	cmpwi r0, 0
/* 802E4FEC  40 82 00 84 */	bne lbl_802E5070
/* 802E4FF0  A8 1F 00 16 */	lha r0, 0x16(r31)
/* 802E4FF4  7C 00 07 35 */	extsh. r0, r0
/* 802E4FF8  41 80 00 70 */	blt lbl_802E5068
/* 802E4FFC  B0 1F 00 18 */	sth r0, 0x18(r31)
/* 802E5000  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 802E5004  7C 60 07 35 */	extsh. r0, r3
/* 802E5008  41 80 00 10 */	blt lbl_802E5018
/* 802E500C  54 60 10 3A */	slwi r0, r3, 2
/* 802E5010  7C 7F 00 2E */	lwzx r3, r31, r0
/* 802E5014  48 00 00 08 */	b lbl_802E501C
lbl_802E5018:
/* 802E5018  38 60 00 00 */	li r3, 0
lbl_802E501C:
/* 802E501C  38 80 00 01 */	li r4, 1
/* 802E5020  48 07 82 E5 */	bl GXCopyDisp
/* 802E5024  48 07 6E A9 */	bl GXFlush
/* 802E5028  38 00 00 02 */	li r0, 2
/* 802E502C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 802E5030  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 802E5034  7C 60 07 35 */	extsh. r0, r3
/* 802E5038  41 80 00 10 */	blt lbl_802E5048
/* 802E503C  54 60 10 3A */	slwi r0, r3, 2
/* 802E5040  7C 1F 00 2E */	lwzx r0, r31, r0
/* 802E5044  48 00 00 08 */	b lbl_802E504C
lbl_802E5048:
/* 802E5048  38 00 00 00 */	li r0, 0
lbl_802E504C:
/* 802E504C  90 0D 8F C8 */	stw r0, frameBuffer(r13)
/* 802E5050  48 06 87 E1 */	bl VIGetNextFrameBuffer
/* 802E5054  28 03 00 00 */	cmplwi r3, 0
/* 802E5058  41 82 00 18 */	beq lbl_802E5070
/* 802E505C  38 60 00 00 */	li r3, 0
/* 802E5060  48 06 87 E1 */	bl VISetBlack
/* 802E5064  48 00 00 0C */	b lbl_802E5070
lbl_802E5068:
/* 802E5068  38 60 00 01 */	li r3, 1
/* 802E506C  48 06 87 D5 */	bl VISetBlack
lbl_802E5070:
/* 802E5070  48 06 86 25 */	bl VIFlush
lbl_802E5074:
/* 802E5074  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E5078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E507C  7C 08 03 A6 */	mtlr r0
/* 802E5080  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5084  4E 80 00 20 */	blr 
