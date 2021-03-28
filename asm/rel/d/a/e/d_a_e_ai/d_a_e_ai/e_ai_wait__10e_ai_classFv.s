lbl_8067AA48:
/* 8067AA48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8067AA4C  7C 08 02 A6 */	mflr r0
/* 8067AA50  90 01 00 24 */	stw r0, 0x24(r1)
/* 8067AA54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8067AA58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8067AA5C  7C 7E 1B 78 */	mr r30, r3
/* 8067AA60  3C 80 80 68 */	lis r4, lit_3789@ha
/* 8067AA64  3B E4 C3 FC */	addi r31, r4, lit_3789@l
/* 8067AA68  A8 03 06 90 */	lha r0, 0x690(r3)
/* 8067AA6C  2C 00 00 03 */	cmpwi r0, 3
/* 8067AA70  41 82 01 0C */	beq lbl_8067AB7C
/* 8067AA74  40 80 00 1C */	bge lbl_8067AA90
/* 8067AA78  2C 00 00 01 */	cmpwi r0, 1
/* 8067AA7C  41 82 00 40 */	beq lbl_8067AABC
/* 8067AA80  40 80 00 C0 */	bge lbl_8067AB40
/* 8067AA84  2C 00 00 00 */	cmpwi r0, 0
/* 8067AA88  40 80 00 14 */	bge lbl_8067AA9C
/* 8067AA8C  48 00 01 FC */	b lbl_8067AC88
lbl_8067AA90:
/* 8067AA90  2C 00 00 0A */	cmpwi r0, 0xa
/* 8067AA94  41 82 01 BC */	beq lbl_8067AC50
/* 8067AA98  48 00 01 F0 */	b lbl_8067AC88
lbl_8067AA9C:
/* 8067AA9C  38 80 00 09 */	li r4, 9
/* 8067AAA0  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8067AAA4  38 A0 00 02 */	li r5, 2
/* 8067AAA8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8067AAAC  4B FF E8 A5 */	bl anm_init__10e_ai_classFifUcf
/* 8067AAB0  38 00 00 01 */	li r0, 1
/* 8067AAB4  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 8067AAB8  48 00 01 D0 */	b lbl_8067AC88
lbl_8067AABC:
/* 8067AABC  3C 80 80 68 */	lis r4, l_HIO@ha
/* 8067AAC0  38 84 C6 A8 */	addi r4, r4, l_HIO@l
/* 8067AAC4  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8067AAC8  38 80 50 00 */	li r4, 0x5000
/* 8067AACC  4B FF EB 45 */	bl pl_check__10e_ai_classFfs
/* 8067AAD0  2C 03 00 00 */	cmpwi r3, 0
/* 8067AAD4  41 82 01 B4 */	beq lbl_8067AC88
/* 8067AAD8  3C 60 80 68 */	lis r3, stringBase0@ha
/* 8067AADC  38 63 C5 38 */	addi r3, r3, stringBase0@l
/* 8067AAE0  38 80 00 12 */	li r4, 0x12
/* 8067AAE4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8067AAE8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8067AAEC  3C A5 00 02 */	addis r5, r5, 2
/* 8067AAF0  38 C0 00 80 */	li r6, 0x80
/* 8067AAF4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8067AAF8  4B 9C 17 F4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8067AAFC  7C 65 1B 78 */	mr r5, r3
/* 8067AB00  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8067AB04  80 63 00 04 */	lwz r3, 4(r3)
/* 8067AB08  80 83 00 04 */	lwz r4, 4(r3)
/* 8067AB0C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8067AB10  38 84 00 58 */	addi r4, r4, 0x58
/* 8067AB14  38 C0 00 01 */	li r6, 1
/* 8067AB18  38 E0 00 00 */	li r7, 0
/* 8067AB1C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067AB20  39 00 00 00 */	li r8, 0
/* 8067AB24  39 20 FF FF */	li r9, -1
/* 8067AB28  4B 99 2B E4 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8067AB2C  38 00 00 12 */	li r0, 0x12
/* 8067AB30  98 1E 05 CC */	stb r0, 0x5cc(r30)
/* 8067AB34  38 00 00 03 */	li r0, 3
/* 8067AB38  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 8067AB3C  48 00 01 4C */	b lbl_8067AC88
lbl_8067AB40:
/* 8067AB40  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8067AB44  38 80 00 01 */	li r4, 1
/* 8067AB48  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8067AB4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8067AB50  40 82 00 18 */	bne lbl_8067AB68
/* 8067AB54  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8067AB58  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8067AB5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8067AB60  41 82 00 08 */	beq lbl_8067AB68
/* 8067AB64  38 80 00 00 */	li r4, 0
lbl_8067AB68:
/* 8067AB68  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8067AB6C  41 82 01 1C */	beq lbl_8067AC88
/* 8067AB70  38 00 00 00 */	li r0, 0
/* 8067AB74  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 8067AB78  48 00 01 10 */	b lbl_8067AC88
lbl_8067AB7C:
/* 8067AB7C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8067AB80  38 80 00 01 */	li r4, 1
/* 8067AB84  88 03 00 05 */	lbz r0, 5(r3)
/* 8067AB88  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8067AB8C  40 82 00 18 */	bne lbl_8067ABA4
/* 8067AB90  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8067AB94  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8067AB98  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8067AB9C  41 82 00 08 */	beq lbl_8067ABA4
/* 8067ABA0  38 80 00 00 */	li r4, 0
lbl_8067ABA4:
/* 8067ABA4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8067ABA8  41 82 00 E0 */	beq lbl_8067AC88
/* 8067ABAC  38 00 00 01 */	li r0, 1
/* 8067ABB0  B0 1E 06 8E */	sth r0, 0x68e(r30)
/* 8067ABB4  38 00 00 00 */	li r0, 0
/* 8067ABB8  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 8067ABBC  38 00 00 32 */	li r0, 0x32
/* 8067ABC0  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
/* 8067ABC4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007009A@ha */
/* 8067ABC8  38 03 00 9A */	addi r0, r3, 0x009A /* 0x0007009A@l */
/* 8067ABCC  90 01 00 08 */	stw r0, 8(r1)
/* 8067ABD0  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8067ABD4  38 81 00 08 */	addi r4, r1, 8
/* 8067ABD8  38 A0 00 00 */	li r5, 0
/* 8067ABDC  38 C0 FF FF */	li r6, -1
/* 8067ABE0  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8067ABE4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8067ABE8  7D 89 03 A6 */	mtctr r12
/* 8067ABEC  4E 80 04 21 */	bctrl 
/* 8067ABF0  3C 60 80 68 */	lis r3, stringBase0@ha
/* 8067ABF4  38 63 C5 38 */	addi r3, r3, stringBase0@l
/* 8067ABF8  38 80 00 11 */	li r4, 0x11
/* 8067ABFC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8067AC00  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8067AC04  3C A5 00 02 */	addis r5, r5, 2
/* 8067AC08  38 C0 00 80 */	li r6, 0x80
/* 8067AC0C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8067AC10  4B 9C 16 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8067AC14  7C 65 1B 78 */	mr r5, r3
/* 8067AC18  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8067AC1C  80 63 00 04 */	lwz r3, 4(r3)
/* 8067AC20  80 83 00 04 */	lwz r4, 4(r3)
/* 8067AC24  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8067AC28  38 84 00 58 */	addi r4, r4, 0x58
/* 8067AC2C  38 C0 00 01 */	li r6, 1
/* 8067AC30  38 E0 00 02 */	li r7, 2
/* 8067AC34  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067AC38  39 00 00 00 */	li r8, 0
/* 8067AC3C  39 20 FF FF */	li r9, -1
/* 8067AC40  4B 99 2A CC */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8067AC44  38 00 00 11 */	li r0, 0x11
/* 8067AC48  98 1E 05 CC */	stb r0, 0x5cc(r30)
/* 8067AC4C  48 00 00 3C */	b lbl_8067AC88
lbl_8067AC50:
/* 8067AC50  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8067AC54  38 80 00 01 */	li r4, 1
/* 8067AC58  88 03 00 05 */	lbz r0, 5(r3)
/* 8067AC5C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8067AC60  40 82 00 18 */	bne lbl_8067AC78
/* 8067AC64  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8067AC68  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8067AC6C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8067AC70  41 82 00 08 */	beq lbl_8067AC78
/* 8067AC74  38 80 00 00 */	li r4, 0
lbl_8067AC78:
/* 8067AC78  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8067AC7C  41 82 00 0C */	beq lbl_8067AC88
/* 8067AC80  38 00 00 01 */	li r0, 1
/* 8067AC84  B0 1E 06 90 */	sth r0, 0x690(r30)
lbl_8067AC88:
/* 8067AC88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8067AC8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8067AC90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067AC94  7C 08 03 A6 */	mtlr r0
/* 8067AC98  38 21 00 20 */	addi r1, r1, 0x20
/* 8067AC9C  4E 80 00 20 */	blr 
