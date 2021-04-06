lbl_801087B0:
/* 801087B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801087B4  7C 08 02 A6 */	mflr r0
/* 801087B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801087BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801087C0  93 C1 00 08 */	stw r30, 8(r1)
/* 801087C4  7C 9E 23 78 */	mr r30, r4
/* 801087C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801087CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801087D0  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 801087D4  7F E3 FB 78 */	mr r3, r31
/* 801087D8  4B F6 CA 21 */	bl ChkPolyHSStick__4dBgSFRC13cBgS_PolyInfo
/* 801087DC  28 03 00 00 */	cmplwi r3, 0
/* 801087E0  41 82 00 2C */	beq lbl_8010880C
/* 801087E4  7F E3 FB 78 */	mr r3, r31
/* 801087E8  7F C4 F3 78 */	mr r4, r30
/* 801087EC  4B F6 BE 3D */	bl GetBgWBasePointer__4cBgSCFRC13cBgS_PolyInfo
/* 801087F0  28 03 00 00 */	cmplwi r3, 0
/* 801087F4  41 82 00 18 */	beq lbl_8010880C
/* 801087F8  88 03 00 14 */	lbz r0, 0x14(r3)
/* 801087FC  28 00 00 00 */	cmplwi r0, 0
/* 80108800  41 82 00 0C */	beq lbl_8010880C
/* 80108804  38 60 00 01 */	li r3, 1
/* 80108808  48 00 00 08 */	b lbl_80108810
lbl_8010880C:
/* 8010880C  38 60 00 00 */	li r3, 0
lbl_80108810:
/* 80108810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80108814  83 C1 00 08 */	lwz r30, 8(r1)
/* 80108818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010881C  7C 08 03 A6 */	mtlr r0
/* 80108820  38 21 00 10 */	addi r1, r1, 0x10
/* 80108824  4E 80 00 20 */	blr 
