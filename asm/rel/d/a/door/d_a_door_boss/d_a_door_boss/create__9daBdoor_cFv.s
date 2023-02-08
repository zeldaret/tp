lbl_8066F8E4:
/* 8066F8E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8066F8E8  7C 08 02 A6 */	mflr r0
/* 8066F8EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8066F8F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8066F8F4  4B CF 28 E9 */	bl _savegpr_29
/* 8066F8F8  7C 7E 1B 78 */	mr r30, r3
/* 8066F8FC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8066F900  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8066F904  40 82 00 58 */	bne lbl_8066F95C
/* 8066F908  7F C0 F3 79 */	or. r0, r30, r30
/* 8066F90C  41 82 00 44 */	beq lbl_8066F950
/* 8066F910  7C 1F 03 78 */	mr r31, r0
/* 8066F914  4B 9A 92 51 */	bl __ct__10fopAc_ac_cFv
/* 8066F918  3B BF 05 AC */	addi r29, r31, 0x5ac
/* 8066F91C  7F A3 EB 78 */	mr r3, r29
/* 8066F920  4B A0 67 81 */	bl __ct__9dBgS_AcchFv
/* 8066F924  3C 60 80 67 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80670B80@ha */
/* 8066F928  38 63 0B 80 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80670B80@l */
/* 8066F92C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8066F930  38 03 00 0C */	addi r0, r3, 0xc
/* 8066F934  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8066F938  38 03 00 18 */	addi r0, r3, 0x18
/* 8066F93C  90 1D 00 24 */	stw r0, 0x24(r29)
/* 8066F940  38 7D 00 14 */	addi r3, r29, 0x14
/* 8066F944  4B A0 95 25 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8066F948  38 7F 07 84 */	addi r3, r31, 0x784
/* 8066F94C  4B A0 65 61 */	bl __ct__12dBgS_AcchCirFv
lbl_8066F950:
/* 8066F950  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8066F954  60 00 00 08 */	ori r0, r0, 8
/* 8066F958  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8066F95C:
/* 8066F95C  7F C3 F3 78 */	mr r3, r30
/* 8066F960  4B FF FA B9 */	bl getArcName__9daBdoor_cFv
/* 8066F964  7C 64 1B 78 */	mr r4, r3
/* 8066F968  38 7E 05 68 */	addi r3, r30, 0x568
/* 8066F96C  4B 9B D5 51 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8066F970  7C 7F 1B 78 */	mr r31, r3
/* 8066F974  2C 1F 00 04 */	cmpwi r31, 4
/* 8066F978  40 82 00 44 */	bne lbl_8066F9BC
/* 8066F97C  7F C3 F3 78 */	mr r3, r30
/* 8066F980  3C 80 80 67 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x8066F4C4@ha */
/* 8066F984  38 84 F4 C4 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x8066F4C4@l */
/* 8066F988  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000A000@ha */
/* 8066F98C  38 A5 A0 00 */	addi r5, r5, 0xA000 /* 0x0000A000@l */
/* 8066F990  4B 9A AB 21 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8066F994  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8066F998  40 82 00 0C */	bne lbl_8066F9A4
/* 8066F99C  38 60 00 05 */	li r3, 5
/* 8066F9A0  48 00 00 20 */	b lbl_8066F9C0
lbl_8066F9A4:
/* 8066F9A4  7F C3 F3 78 */	mr r3, r30
/* 8066F9A8  4B FF FE 45 */	bl CreateInit__9daBdoor_cFv
/* 8066F9AC  2C 03 00 00 */	cmpwi r3, 0
/* 8066F9B0  40 82 00 0C */	bne lbl_8066F9BC
/* 8066F9B4  38 60 00 05 */	li r3, 5
/* 8066F9B8  48 00 00 08 */	b lbl_8066F9C0
lbl_8066F9BC:
/* 8066F9BC  7F E3 FB 78 */	mr r3, r31
lbl_8066F9C0:
/* 8066F9C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8066F9C4  4B CF 28 65 */	bl _restgpr_29
/* 8066F9C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8066F9CC  7C 08 03 A6 */	mtlr r0
/* 8066F9D0  38 21 00 20 */	addi r1, r1, 0x20
/* 8066F9D4  4E 80 00 20 */	blr 
