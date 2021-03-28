lbl_801029C8:
/* 801029C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801029CC  7C 08 02 A6 */	mflr r0
/* 801029D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801029D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801029D8  7C 7F 1B 78 */	mr r31, r3
/* 801029DC  48 00 15 49 */	bl checkSwimButtonMove__9daAlink_cFv
/* 801029E0  2C 03 00 00 */	cmpwi r3, 0
/* 801029E4  41 82 00 1C */	beq lbl_80102A00
/* 801029E8  7F E3 FB 78 */	mr r3, r31
/* 801029EC  4B FF EF CD */	bl getZoraSwim__9daAlink_cCFv
/* 801029F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801029F4  41 82 00 0C */	beq lbl_80102A00
/* 801029F8  38 00 00 1E */	li r0, 0x1e
/* 801029FC  B0 1F 30 00 */	sth r0, 0x3000(r31)
lbl_80102A00:
/* 80102A00  7F E3 FB 78 */	mr r3, r31
/* 80102A04  4B FB D3 AD */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80102A08  2C 03 00 00 */	cmpwi r3, 0
/* 80102A0C  41 82 00 1C */	beq lbl_80102A28
/* 80102A10  7F E3 FB 78 */	mr r3, r31
/* 80102A14  38 80 00 01 */	li r4, 1
/* 80102A18  38 A0 00 01 */	li r5, 1
/* 80102A1C  4B FB 8A 9D */	bl checkHeavyStateOn__9daAlink_cFii
/* 80102A20  2C 03 00 00 */	cmpwi r3, 0
/* 80102A24  41 82 00 10 */	beq lbl_80102A34
lbl_80102A28:
/* 80102A28  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80102A2C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80102A30  41 82 00 0C */	beq lbl_80102A3C
lbl_80102A34:
/* 80102A34  7F E3 FB 78 */	mr r3, r31
/* 80102A38  4B FB 1F D1 */	bl setTalkStatus__9daAlink_cFv
lbl_80102A3C:
/* 80102A3C  7F E3 FB 78 */	mr r3, r31
/* 80102A40  38 80 00 01 */	li r4, 1
/* 80102A44  4B FB 51 B5 */	bl orderTalk__9daAlink_cFi
/* 80102A48  2C 03 00 00 */	cmpwi r3, 0
/* 80102A4C  41 82 00 0C */	beq lbl_80102A58
/* 80102A50  38 60 00 01 */	li r3, 1
/* 80102A54  48 00 00 B4 */	b lbl_80102B08
lbl_80102A58:
/* 80102A58  80 7F 27 E4 */	lwz r3, 0x27e4(r31)
/* 80102A5C  28 03 00 00 */	cmplwi r3, 0
/* 80102A60  41 82 00 50 */	beq lbl_80102AB0
/* 80102A64  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80102A68  28 00 00 07 */	cmplwi r0, 7
/* 80102A6C  40 82 00 44 */	bne lbl_80102AB0
/* 80102A70  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80102A74  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80102A78  41 82 00 38 */	beq lbl_80102AB0
/* 80102A7C  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 80102A80  A8 03 00 08 */	lha r0, 8(r3)
/* 80102A84  2C 00 00 ED */	cmpwi r0, 0xed
/* 80102A88  40 82 00 28 */	bne lbl_80102AB0
/* 80102A8C  7F E3 FB 78 */	mr r3, r31
/* 80102A90  38 80 00 17 */	li r4, 0x17
/* 80102A94  4B FB 07 BD */	bl setDoStatus__9daAlink_cFUc
/* 80102A98  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 80102A9C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80102AA0  41 82 00 60 */	beq lbl_80102B00
/* 80102AA4  7F E3 FB 78 */	mr r3, r31
/* 80102AA8  4B FF 1F A9 */	bl procCanoeRideInit__9daAlink_cFv
/* 80102AAC  48 00 00 5C */	b lbl_80102B08
lbl_80102AB0:
/* 80102AB0  7F E3 FB 78 */	mr r3, r31
/* 80102AB4  48 00 14 71 */	bl checkSwimButtonMove__9daAlink_cFv
/* 80102AB8  2C 03 00 00 */	cmpwi r3, 0
/* 80102ABC  41 82 00 44 */	beq lbl_80102B00
/* 80102AC0  7F E3 FB 78 */	mr r3, r31
/* 80102AC4  48 00 14 D1 */	bl checkZoraSwimMove__9daAlink_cFv
/* 80102AC8  2C 03 00 00 */	cmpwi r3, 0
/* 80102ACC  40 82 00 34 */	bne lbl_80102B00
/* 80102AD0  7F E3 FB 78 */	mr r3, r31
/* 80102AD4  48 00 14 0D */	bl checkSwimButtonAccept__9daAlink_cFv
/* 80102AD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80102ADC  41 82 00 10 */	beq lbl_80102AEC
/* 80102AE0  7F E3 FB 78 */	mr r3, r31
/* 80102AE4  48 00 1E 75 */	bl procSwimDiveInit__9daAlink_cFv
/* 80102AE8  48 00 00 20 */	b lbl_80102B08
lbl_80102AEC:
/* 80102AEC  38 00 00 1E */	li r0, 0x1e
/* 80102AF0  B0 1F 30 00 */	sth r0, 0x3000(r31)
/* 80102AF4  7F E3 FB 78 */	mr r3, r31
/* 80102AF8  48 00 1B 79 */	bl procSwimMoveInit__9daAlink_cFv
/* 80102AFC  48 00 00 0C */	b lbl_80102B08
lbl_80102B00:
/* 80102B00  7F E3 FB 78 */	mr r3, r31
/* 80102B04  4B FB 72 29 */	bl checkNextActionFromButton__9daAlink_cFv
lbl_80102B08:
/* 80102B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80102B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80102B10  7C 08 03 A6 */	mtlr r0
/* 80102B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80102B18  4E 80 00 20 */	blr 
