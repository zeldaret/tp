lbl_8098CD74:
/* 8098CD74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098CD78  7C 08 02 A6 */	mflr r0
/* 8098CD7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098CD80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098CD84  7C 7F 1B 78 */	mr r31, r3
/* 8098CD88  80 83 05 68 */	lwz r4, 0x568(r3)
/* 8098CD8C  80 84 00 04 */	lwz r4, 4(r4)
/* 8098CD90  80 84 00 04 */	lwz r4, 4(r4)
/* 8098CD94  80 84 00 60 */	lwz r4, 0x60(r4)
/* 8098CD98  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8098CD9C  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 8098CDA0  90 04 00 3C */	stw r0, 0x3c(r4)
/* 8098CDA4  38 80 00 00 */	li r4, 0
/* 8098CDA8  38 A0 00 00 */	li r5, 0
/* 8098CDAC  3C C0 80 99 */	lis r6, m__17daNpcChin_Param_c@ha
/* 8098CDB0  38 C6 19 0C */	addi r6, r6, m__17daNpcChin_Param_c@l
/* 8098CDB4  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 8098CDB8  38 C0 00 00 */	li r6, 0
/* 8098CDBC  38 E0 00 00 */	li r7, 0
/* 8098CDC0  4B 7C 54 EC */	b draw__8daNpcF_cFiifP11_GXColorS10i
/* 8098CDC4  38 7F 0E 30 */	addi r3, r31, 0xe30
/* 8098CDC8  38 9F 01 0C */	addi r4, r31, 0x10c
/* 8098CDCC  4B FF F2 95 */	bl draw__Q211daNpcChin_c12_SpotLight_cFP12dKy_tevstr_c
/* 8098CDD0  38 60 00 01 */	li r3, 1
/* 8098CDD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098CDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098CDDC  7C 08 03 A6 */	mtlr r0
/* 8098CDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8098CDE4  4E 80 00 20 */	blr 
