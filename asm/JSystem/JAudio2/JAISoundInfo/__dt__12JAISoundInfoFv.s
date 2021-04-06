lbl_802A2D50:
/* 802A2D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A2D54  7C 08 02 A6 */	mflr r0
/* 802A2D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A2D5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A2D60  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A2D64  41 82 00 38 */	beq lbl_802A2D9C
/* 802A2D68  3C 60 80 3D */	lis r3, __vt__12JAISoundInfo@ha /* 0x803C99A0@ha */
/* 802A2D6C  38 03 99 A0 */	addi r0, r3, __vt__12JAISoundInfo@l /* 0x803C99A0@l */
/* 802A2D70  90 1F 00 00 */	stw r0, 0(r31)
/* 802A2D74  41 82 00 18 */	beq lbl_802A2D8C
/* 802A2D78  80 0D 85 DC */	lwz r0, data_80450B5C(r13)
/* 802A2D7C  7C 00 F8 40 */	cmplw r0, r31
/* 802A2D80  40 82 00 0C */	bne lbl_802A2D8C
/* 802A2D84  38 00 00 00 */	li r0, 0
/* 802A2D88  90 0D 85 DC */	stw r0, data_80450B5C(r13)
lbl_802A2D8C:
/* 802A2D8C  7C 80 07 35 */	extsh. r0, r4
/* 802A2D90  40 81 00 0C */	ble lbl_802A2D9C
/* 802A2D94  7F E3 FB 78 */	mr r3, r31
/* 802A2D98  48 02 BF A5 */	bl __dl__FPv
lbl_802A2D9C:
/* 802A2D9C  7F E3 FB 78 */	mr r3, r31
/* 802A2DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A2DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A2DA8  7C 08 03 A6 */	mtlr r0
/* 802A2DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A2DB0  4E 80 00 20 */	blr 
