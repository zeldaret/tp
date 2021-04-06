lbl_802AFEDC:
/* 802AFEDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AFEE0  7C 08 02 A6 */	mflr r0
/* 802AFEE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AFEE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AFEEC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AFEF0  7C 7E 1B 78 */	mr r30, r3
/* 802AFEF4  7C 9F 23 78 */	mr r31, r4
/* 802AFEF8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802AFEFC  28 04 00 00 */	cmplwi r4, 0
/* 802AFF00  41 82 00 10 */	beq lbl_802AFF10
/* 802AFF04  80 64 00 18 */	lwz r3, 0x18(r4)
/* 802AFF08  90 61 00 0C */	stw r3, 0xc(r1)
/* 802AFF0C  48 00 00 08 */	b lbl_802AFF14
lbl_802AFF10:
/* 802AFF10  38 60 FF FF */	li r3, -1
lbl_802AFF14:
/* 802AFF14  3C 03 FE 00 */	addis r0, r3, 0xfe00
/* 802AFF18  28 00 00 3F */	cmplwi r0, 0x3f
/* 802AFF1C  41 82 00 28 */	beq lbl_802AFF44
/* 802AFF20  28 04 00 00 */	cmplwi r4, 0
/* 802AFF24  41 82 00 10 */	beq lbl_802AFF34
/* 802AFF28  80 64 00 18 */	lwz r3, 0x18(r4)
/* 802AFF2C  90 61 00 08 */	stw r3, 8(r1)
/* 802AFF30  48 00 00 08 */	b lbl_802AFF38
lbl_802AFF34:
/* 802AFF34  38 60 FF FF */	li r3, -1
lbl_802AFF38:
/* 802AFF38  3C 03 FE 00 */	addis r0, r3, 0xfe00
/* 802AFF3C  28 00 00 5C */	cmplwi r0, 0x5c
/* 802AFF40  40 82 00 18 */	bne lbl_802AFF58
lbl_802AFF44:
/* 802AFF44  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802AFF48  3C 80 80 3A */	lis r4, Z2SeqMgr__stringBase0@ha /* 0x8039BA08@ha */
/* 802AFF4C  38 84 BA 08 */	addi r4, r4, Z2SeqMgr__stringBase0@l /* 0x8039BA08@l */
/* 802AFF50  38 84 02 76 */	addi r4, r4, 0x276
/* 802AFF54  48 00 62 95 */	bl setDemoName__11Z2StatusMgrFPc
lbl_802AFF58:
/* 802AFF58  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802AFF5C  28 03 00 00 */	cmplwi r3, 0
/* 802AFF60  41 82 00 0C */	beq lbl_802AFF6C
/* 802AFF64  7F E4 FB 78 */	mr r4, r31
/* 802AFF68  4B FF 25 75 */	bl stop__8JAISoundFUl
lbl_802AFF6C:
/* 802AFF6C  38 7E 00 0C */	addi r3, r30, 0xc
/* 802AFF70  4B FF 22 15 */	bl releaseSound__14JAISoundHandleFv
/* 802AFF74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AFF78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AFF7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AFF80  7C 08 03 A6 */	mtlr r0
/* 802AFF84  38 21 00 20 */	addi r1, r1, 0x20
/* 802AFF88  4E 80 00 20 */	blr 
