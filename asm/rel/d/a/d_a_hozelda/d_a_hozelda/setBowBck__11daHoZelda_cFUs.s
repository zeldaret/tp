lbl_80848118:
/* 80848118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084811C  7C 08 02 A6 */	mflr r0
/* 80848120  90 01 00 14 */	stw r0, 0x14(r1)
/* 80848124  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80848128  93 C1 00 08 */	stw r30, 8(r1)
/* 8084812C  7C 7E 1B 78 */	mr r30, r3
/* 80848130  7C 9F 23 78 */	mr r31, r4
/* 80848134  3C 60 80 85 */	lis r3, l_arcName@ha /* 0x80848E3C@ha */
/* 80848138  38 63 8E 3C */	addi r3, r3, l_arcName@l /* 0x80848E3C@l */
/* 8084813C  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 80848140  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80848144  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80848148  3C A5 00 02 */	addis r5, r5, 2
/* 8084814C  38 C0 00 80 */	li r6, 0x80
/* 80848150  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80848154  4B 7F 41 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80848158  7C 64 1B 78 */	mr r4, r3
/* 8084815C  38 7E 06 A8 */	addi r3, r30, 0x6a8
/* 80848160  38 A0 00 01 */	li r5, 1
/* 80848164  38 C0 FF FF */	li r6, -1
/* 80848168  3C E0 80 85 */	lis r7, lit_3722@ha /* 0x80848E58@ha */
/* 8084816C  C0 27 8E 58 */	lfs f1, lit_3722@l(r7)  /* 0x80848E58@l */
/* 80848170  38 E0 00 00 */	li r7, 0
/* 80848174  39 00 FF FF */	li r8, -1
/* 80848178  39 20 00 01 */	li r9, 1
/* 8084817C  4B 7C 56 61 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80848180  B3 FE 06 EA */	sth r31, 0x6ea(r30)
/* 80848184  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80848188  83 C1 00 08 */	lwz r30, 8(r1)
/* 8084818C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80848190  7C 08 03 A6 */	mtlr r0
/* 80848194  38 21 00 10 */	addi r1, r1, 0x10
/* 80848198  4E 80 00 20 */	blr 
