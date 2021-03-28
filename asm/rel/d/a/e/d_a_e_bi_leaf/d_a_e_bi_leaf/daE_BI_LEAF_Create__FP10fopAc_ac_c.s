lbl_8068DF24:
/* 8068DF24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068DF28  7C 08 02 A6 */	mflr r0
/* 8068DF2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068DF30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068DF34  93 C1 00 08 */	stw r30, 8(r1)
/* 8068DF38  7C 7F 1B 78 */	mr r31, r3
/* 8068DF3C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8068DF40  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8068DF44  40 82 00 1C */	bne lbl_8068DF60
/* 8068DF48  28 1F 00 00 */	cmplwi r31, 0
/* 8068DF4C  41 82 00 08 */	beq lbl_8068DF54
/* 8068DF50  4B 98 AC 14 */	b __ct__10fopAc_ac_cFv
lbl_8068DF54:
/* 8068DF54  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8068DF58  60 00 00 08 */	ori r0, r0, 8
/* 8068DF5C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8068DF60:
/* 8068DF60  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8068DF64  3C 80 80 69 */	lis r4, stringBase0@ha
/* 8068DF68  38 84 DF E0 */	addi r4, r4, stringBase0@l
/* 8068DF6C  4B 99 EF 50 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8068DF70  7C 7E 1B 78 */	mr r30, r3
/* 8068DF74  2C 1E 00 04 */	cmpwi r30, 4
/* 8068DF78  40 82 00 44 */	bne lbl_8068DFBC
/* 8068DF7C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8068DF80  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 8068DF84  7F E3 FB 78 */	mr r3, r31
/* 8068DF88  3C 80 80 69 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8068DF8C  38 84 DE A0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 8068DF90  38 A0 0A 00 */	li r5, 0xa00
/* 8068DF94  4B 98 C5 1C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8068DF98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8068DF9C  40 82 00 0C */	bne lbl_8068DFA8
/* 8068DFA0  38 60 00 05 */	li r3, 5
/* 8068DFA4  48 00 00 1C */	b lbl_8068DFC0
lbl_8068DFA8:
/* 8068DFA8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068DFAC  38 03 00 24 */	addi r0, r3, 0x24
/* 8068DFB0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 8068DFB4  7F E3 FB 78 */	mr r3, r31
/* 8068DFB8  4B FF FE 19 */	bl daE_BI_LEAF_Execute__FP15e_bi_leaf_class
lbl_8068DFBC:
/* 8068DFBC  7F C3 F3 78 */	mr r3, r30
lbl_8068DFC0:
/* 8068DFC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068DFC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8068DFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068DFCC  7C 08 03 A6 */	mtlr r0
/* 8068DFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8068DFD4  4E 80 00 20 */	blr 
