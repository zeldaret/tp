lbl_80031B50:
/* 80031B50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031B54  7C 08 02 A6 */	mflr r0
/* 80031B58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031B5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80031B60  7C 64 1B 78 */	mr r4, r3
/* 80031B64  80 0D 88 3C */	lwz r0, mTagMagne__12daTagMagne_c(r13)
/* 80031B68  28 00 00 00 */	cmplwi r0, 0
/* 80031B6C  40 82 00 0C */	bne lbl_80031B78
/* 80031B70  38 60 00 00 */	li r3, 0
/* 80031B74  48 00 00 6C */	b lbl_80031BE0
lbl_80031B78:
/* 80031B78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80031B7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80031B80  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80031B84  48 04 31 89 */	bl GetMagnetCode__4dBgSFRC13cBgS_PolyInfo
/* 80031B88  7C 7F 1B 78 */	mr r31, r3
/* 80031B8C  2C 1F 00 01 */	cmpwi r31, 1
/* 80031B90  40 82 00 14 */	bne lbl_80031BA4
/* 80031B94  80 6D 88 3C */	lwz r3, mTagMagne__12daTagMagne_c(r13)
/* 80031B98  48 00 00 5D */	bl checkMagneA__12daTagMagne_cFv
/* 80031B9C  2C 03 00 00 */	cmpwi r3, 0
/* 80031BA0  40 82 00 34 */	bne lbl_80031BD4
lbl_80031BA4:
/* 80031BA4  2C 1F 00 02 */	cmpwi r31, 2
/* 80031BA8  40 82 00 14 */	bne lbl_80031BBC
/* 80031BAC  80 6D 88 3C */	lwz r3, mTagMagne__12daTagMagne_c(r13)
/* 80031BB0  48 00 00 99 */	bl checkMagneB__12daTagMagne_cFv
/* 80031BB4  2C 03 00 00 */	cmpwi r3, 0
/* 80031BB8  40 82 00 1C */	bne lbl_80031BD4
lbl_80031BBC:
/* 80031BBC  2C 1F 00 03 */	cmpwi r31, 3
/* 80031BC0  40 82 00 1C */	bne lbl_80031BDC
/* 80031BC4  80 6D 88 3C */	lwz r3, mTagMagne__12daTagMagne_c(r13)
/* 80031BC8  48 00 00 D5 */	bl checkMagneC__12daTagMagne_cFv
/* 80031BCC  2C 03 00 00 */	cmpwi r3, 0
/* 80031BD0  41 82 00 0C */	beq lbl_80031BDC
lbl_80031BD4:
/* 80031BD4  38 60 00 01 */	li r3, 1
/* 80031BD8  48 00 00 08 */	b lbl_80031BE0
lbl_80031BDC:
/* 80031BDC  38 60 00 00 */	li r3, 0
lbl_80031BE0:
/* 80031BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80031BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031BE8  7C 08 03 A6 */	mtlr r0
/* 80031BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80031BF0  4E 80 00 20 */	blr 
