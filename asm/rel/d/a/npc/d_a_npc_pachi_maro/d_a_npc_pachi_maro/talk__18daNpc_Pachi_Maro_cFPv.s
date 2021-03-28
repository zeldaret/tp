lbl_80A9986C:
/* 80A9986C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A99870  7C 08 02 A6 */	mflr r0
/* 80A99874  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A99878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9987C  7C 7F 1B 78 */	mr r31, r3
/* 80A99880  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A99884  2C 00 00 02 */	cmpwi r0, 2
/* 80A99888  41 82 00 44 */	beq lbl_80A998CC
/* 80A9988C  40 80 00 58 */	bge lbl_80A998E4
/* 80A99890  2C 00 00 00 */	cmpwi r0, 0
/* 80A99894  40 80 00 0C */	bge lbl_80A998A0
/* 80A99898  48 00 00 4C */	b lbl_80A998E4
/* 80A9989C  48 00 00 48 */	b lbl_80A998E4
lbl_80A998A0:
/* 80A998A0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A998A4  2C 00 00 00 */	cmpwi r0, 0
/* 80A998A8  40 82 00 24 */	bne lbl_80A998CC
/* 80A998AC  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A998B0  4B 6A BE 58 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A998B4  28 03 00 00 */	cmplwi r3, 0
/* 80A998B8  41 82 00 0C */	beq lbl_80A998C4
/* 80A998BC  38 00 FF FF */	li r0, -1
/* 80A998C0  98 03 0F E8 */	stb r0, 0xfe8(r3)
lbl_80A998C4:
/* 80A998C4  38 00 00 02 */	li r0, 2
/* 80A998C8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A998CC:
/* 80A998CC  38 00 00 01 */	li r0, 1
/* 80A998D0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A998D4  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 80A998D8  B0 1F 0F 82 */	sth r0, 0xf82(r31)
/* 80A998DC  7F E3 FB 78 */	mr r3, r31
/* 80A998E0  4B 6B 09 44 */	b evtChange__8daNpcT_cFv
lbl_80A998E4:
/* 80A998E4  38 60 00 00 */	li r3, 0
/* 80A998E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A998EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A998F0  7C 08 03 A6 */	mtlr r0
/* 80A998F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A998F8  4E 80 00 20 */	blr 
