lbl_80AE3D28:
/* 80AE3D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE3D2C  7C 08 02 A6 */	mflr r0
/* 80AE3D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE3D34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE3D38  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE3D3C  7C 7E 1B 78 */	mr r30, r3
/* 80AE3D40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AE3D44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AE3D48  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AE3D4C  7F E3 FB 78 */	mr r3, r31
/* 80AE3D50  3C 80 80 AE */	lis r4, struct_80AE6CCC+0x0@ha
/* 80AE3D54  38 84 6C CC */	addi r4, r4, struct_80AE6CCC+0x0@l
/* 80AE3D58  38 84 00 31 */	addi r4, r4, 0x31
/* 80AE3D5C  7F C5 F3 78 */	mr r5, r30
/* 80AE3D60  38 C0 FF FF */	li r6, -1
/* 80AE3D64  4B 56 3D B8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AE3D68  2C 03 FF FF */	cmpwi r3, -1
/* 80AE3D6C  41 82 00 68 */	beq lbl_80AE3DD4
/* 80AE3D70  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80AE3D74  7F E3 FB 78 */	mr r3, r31
/* 80AE3D78  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AE3D7C  3C A0 80 AE */	lis r5, mCutNameList__11daNpc_Sha_c@ha
/* 80AE3D80  38 A5 70 A0 */	addi r5, r5, mCutNameList__11daNpc_Sha_c@l
/* 80AE3D84  38 C0 00 02 */	li r6, 2
/* 80AE3D88  38 E0 00 00 */	li r7, 0
/* 80AE3D8C  39 00 00 00 */	li r8, 0
/* 80AE3D90  4B 56 40 80 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AE3D94  7C 60 1B 78 */	mr r0, r3
/* 80AE3D98  7F C3 F3 78 */	mr r3, r30
/* 80AE3D9C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AE3DA0  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80AE3DA4  3C A0 80 AE */	lis r5, mCutList__11daNpc_Sha_c@ha
/* 80AE3DA8  38 05 70 B4 */	addi r0, r5, mCutList__11daNpc_Sha_c@l
/* 80AE3DAC  7D 80 32 14 */	add r12, r0, r6
/* 80AE3DB0  4B 87 E2 D4 */	b __ptmf_scall
/* 80AE3DB4  60 00 00 00 */	nop 
/* 80AE3DB8  2C 03 00 00 */	cmpwi r3, 0
/* 80AE3DBC  41 82 00 10 */	beq lbl_80AE3DCC
/* 80AE3DC0  7F E3 FB 78 */	mr r3, r31
/* 80AE3DC4  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AE3DC8  4B 56 43 B4 */	b cutEnd__16dEvent_manager_cFi
lbl_80AE3DCC:
/* 80AE3DCC  38 60 00 01 */	li r3, 1
/* 80AE3DD0  48 00 00 08 */	b lbl_80AE3DD8
lbl_80AE3DD4:
/* 80AE3DD4  38 60 00 00 */	li r3, 0
lbl_80AE3DD8:
/* 80AE3DD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE3DDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE3DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE3DE4  7C 08 03 A6 */	mtlr r0
/* 80AE3DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE3DEC  4E 80 00 20 */	blr 
