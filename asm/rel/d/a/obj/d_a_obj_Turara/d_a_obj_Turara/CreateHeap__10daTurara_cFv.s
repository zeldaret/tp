lbl_80B9CD74:
/* 80B9CD74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9CD78  7C 08 02 A6 */	mflr r0
/* 80B9CD7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9CD80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9CD84  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9CD88  7C 7F 1B 78 */	mr r31, r3
/* 80B9CD8C  3C 60 80 BA */	lis r3, stringBase0@ha
/* 80B9CD90  38 63 E9 70 */	addi r3, r3, stringBase0@l
/* 80B9CD94  88 1F 09 8C */	lbz r0, 0x98c(r31)
/* 80B9CD98  54 00 10 3A */	slwi r0, r0, 2
/* 80B9CD9C  3C 80 80 BA */	lis r4, l_bmdIdx@ha
/* 80B9CDA0  38 84 E9 38 */	addi r4, r4, l_bmdIdx@l
/* 80B9CDA4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B9CDA8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B9CDAC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B9CDB0  3F C5 00 02 */	addis r30, r5, 2
/* 80B9CDB4  3B DE C2 F8 */	addi r30, r30, -15624
/* 80B9CDB8  7F C5 F3 78 */	mr r5, r30
/* 80B9CDBC  38 C0 00 80 */	li r6, 0x80
/* 80B9CDC0  4B 49 F5 2C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B9CDC4  88 1F 09 8C */	lbz r0, 0x98c(r31)
/* 80B9CDC8  28 00 00 00 */	cmplwi r0, 0
/* 80B9CDCC  40 82 00 1C */	bne lbl_80B9CDE8
/* 80B9CDD0  38 80 00 00 */	li r4, 0
/* 80B9CDD4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B9CDD8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B9CDDC  4B 47 7E 78 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B9CDE0  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 80B9CDE4  48 00 00 18 */	b lbl_80B9CDFC
lbl_80B9CDE8:
/* 80B9CDE8  3C 80 00 08 */	lis r4, 8
/* 80B9CDEC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B9CDF0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B9CDF4  4B 47 7E 60 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B9CDF8  90 7F 05 C0 */	stw r3, 0x5c0(r31)
lbl_80B9CDFC:
/* 80B9CDFC  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 80B9CE00  28 00 00 00 */	cmplwi r0, 0
/* 80B9CE04  40 82 00 0C */	bne lbl_80B9CE10
/* 80B9CE08  38 60 00 00 */	li r3, 0
/* 80B9CE0C  48 00 00 B4 */	b lbl_80B9CEC0
lbl_80B9CE10:
/* 80B9CE10  3C 60 80 BA */	lis r3, stringBase0@ha
/* 80B9CE14  38 63 E9 70 */	addi r3, r3, stringBase0@l
/* 80B9CE18  38 80 00 09 */	li r4, 9
/* 80B9CE1C  7F C5 F3 78 */	mr r5, r30
/* 80B9CE20  38 C0 00 80 */	li r6, 0x80
/* 80B9CE24  4B 49 F4 C8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B9CE28  3C 80 00 08 */	lis r4, 8
/* 80B9CE2C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B9CE30  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B9CE34  4B 47 7E 20 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B9CE38  90 7F 05 C4 */	stw r3, 0x5c4(r31)
/* 80B9CE3C  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 80B9CE40  28 00 00 00 */	cmplwi r0, 0
/* 80B9CE44  40 82 00 0C */	bne lbl_80B9CE50
/* 80B9CE48  38 60 00 00 */	li r3, 0
/* 80B9CE4C  48 00 00 74 */	b lbl_80B9CEC0
lbl_80B9CE50:
/* 80B9CE50  38 60 00 C0 */	li r3, 0xc0
/* 80B9CE54  4B 73 1D F8 */	b __nw__FUl
/* 80B9CE58  7C 60 1B 79 */	or. r0, r3, r3
/* 80B9CE5C  41 82 00 0C */	beq lbl_80B9CE68
/* 80B9CE60  4B 4D EB 10 */	b __ct__4dBgWFv
/* 80B9CE64  7C 60 1B 78 */	mr r0, r3
lbl_80B9CE68:
/* 80B9CE68  90 1F 09 80 */	stw r0, 0x980(r31)
/* 80B9CE6C  80 1F 09 80 */	lwz r0, 0x980(r31)
/* 80B9CE70  28 00 00 00 */	cmplwi r0, 0
/* 80B9CE74  41 82 00 38 */	beq lbl_80B9CEAC
/* 80B9CE78  3C 60 80 BA */	lis r3, stringBase0@ha
/* 80B9CE7C  38 63 E9 70 */	addi r3, r3, stringBase0@l
/* 80B9CE80  38 80 00 0D */	li r4, 0xd
/* 80B9CE84  7F C5 F3 78 */	mr r5, r30
/* 80B9CE88  38 C0 00 80 */	li r6, 0x80
/* 80B9CE8C  4B 49 F4 60 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B9CE90  7C 64 1B 78 */	mr r4, r3
/* 80B9CE94  80 7F 09 80 */	lwz r3, 0x980(r31)
/* 80B9CE98  38 A0 00 01 */	li r5, 1
/* 80B9CE9C  38 DF 05 6C */	addi r6, r31, 0x56c
/* 80B9CEA0  4B 4D D0 98 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80B9CEA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B9CEA8  41 82 00 14 */	beq lbl_80B9CEBC
lbl_80B9CEAC:
/* 80B9CEAC  38 00 00 00 */	li r0, 0
/* 80B9CEB0  90 1F 09 80 */	stw r0, 0x980(r31)
/* 80B9CEB4  38 60 00 00 */	li r3, 0
/* 80B9CEB8  48 00 00 08 */	b lbl_80B9CEC0
lbl_80B9CEBC:
/* 80B9CEBC  38 60 00 01 */	li r3, 1
lbl_80B9CEC0:
/* 80B9CEC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9CEC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9CEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9CECC  7C 08 03 A6 */	mtlr r0
/* 80B9CED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9CED4  4E 80 00 20 */	blr 
