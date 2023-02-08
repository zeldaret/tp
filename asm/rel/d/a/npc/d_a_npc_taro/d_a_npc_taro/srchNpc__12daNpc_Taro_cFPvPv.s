lbl_80566B0C:
/* 80566B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566B10  7C 08 02 A6 */	mflr r0
/* 80566B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566B18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80566B1C  7C 7F 1B 78 */	mr r31, r3
/* 80566B20  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80566B24  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80566B28  2C 00 00 32 */	cmpwi r0, 0x32
/* 80566B2C  40 80 00 90 */	bge lbl_80566BBC
/* 80566B30  28 1F 00 00 */	cmplwi r31, 0
/* 80566B34  41 82 00 88 */	beq lbl_80566BBC
/* 80566B38  7C 1F 20 40 */	cmplw r31, r4
/* 80566B3C  41 82 00 80 */	beq lbl_80566BBC
/* 80566B40  28 1F 00 00 */	cmplwi r31, 0
/* 80566B44  41 82 00 0C */	beq lbl_80566B50
/* 80566B48  80 7F 00 04 */	lwz r3, 4(r31)
/* 80566B4C  48 00 00 08 */	b lbl_80566B54
lbl_80566B50:
/* 80566B50  38 60 FF FF */	li r3, -1
lbl_80566B54:
/* 80566B54  4B AB A8 49 */	bl fpcEx_IsExist__FUi
/* 80566B58  2C 03 00 00 */	cmpwi r3, 0
/* 80566B5C  41 82 00 60 */	beq lbl_80566BBC
/* 80566B60  88 1F 04 96 */	lbz r0, 0x496(r31)
/* 80566B64  28 00 00 04 */	cmplwi r0, 4
/* 80566B68  41 82 00 30 */	beq lbl_80566B98
/* 80566B6C  A8 1F 00 08 */	lha r0, 8(r31)
/* 80566B70  2C 00 02 E9 */	cmpwi r0, 0x2e9
/* 80566B74  40 82 00 48 */	bne lbl_80566BBC
/* 80566B78  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 80566B7C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80566B80  38 03 FF 01 */	addi r0, r3, -255
/* 80566B84  30 00 FF FF */	addic r0, r0, -1
/* 80566B88  7C 00 01 10 */	subfe r0, r0, r0
/* 80566B8C  7C 60 00 78 */	andc r0, r3, r0
/* 80566B90  2C 00 00 0F */	cmpwi r0, 0xf
/* 80566B94  40 82 00 28 */	bne lbl_80566BBC
lbl_80566B98:
/* 80566B98  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80566B9C  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 80566BA0  80 85 00 00 */	lwz r4, 0(r5)
/* 80566BA4  54 80 10 3A */	slwi r0, r4, 2
/* 80566BA8  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80566BAC  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80566BB0  7F E3 01 2E */	stwx r31, r3, r0
/* 80566BB4  38 04 00 01 */	addi r0, r4, 1
/* 80566BB8  90 05 00 00 */	stw r0, 0(r5)
lbl_80566BBC:
/* 80566BBC  38 60 00 00 */	li r3, 0
/* 80566BC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566BC8  7C 08 03 A6 */	mtlr r0
/* 80566BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80566BD0  4E 80 00 20 */	blr 
