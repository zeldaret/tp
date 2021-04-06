lbl_8067106C:
/* 8067106C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80671070  7C 08 02 A6 */	mflr r0
/* 80671074  90 01 00 24 */	stw r0, 0x24(r1)
/* 80671078  39 61 00 20 */	addi r11, r1, 0x20
/* 8067107C  4B CF 11 61 */	bl _savegpr_29
/* 80671080  7C 7F 1B 78 */	mr r31, r3
/* 80671084  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80671088  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8067108C  40 82 00 58 */	bne lbl_806710E4
/* 80671090  7F E0 FB 79 */	or. r0, r31, r31
/* 80671094  41 82 00 44 */	beq lbl_806710D8
/* 80671098  7C 1E 03 78 */	mr r30, r0
/* 8067109C  4B 9A 7A C9 */	bl __ct__10fopAc_ac_cFv
/* 806710A0  3B BE 05 B8 */	addi r29, r30, 0x5b8
/* 806710A4  7F A3 EB 78 */	mr r3, r29
/* 806710A8  4B A0 4F F9 */	bl __ct__9dBgS_AcchFv
/* 806710AC  3C 60 80 67 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8067276C@ha */
/* 806710B0  38 63 27 6C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8067276C@l */
/* 806710B4  90 7D 00 10 */	stw r3, 0x10(r29)
/* 806710B8  38 03 00 0C */	addi r0, r3, 0xc
/* 806710BC  90 1D 00 14 */	stw r0, 0x14(r29)
/* 806710C0  38 03 00 18 */	addi r0, r3, 0x18
/* 806710C4  90 1D 00 24 */	stw r0, 0x24(r29)
/* 806710C8  38 7D 00 14 */	addi r3, r29, 0x14
/* 806710CC  4B A0 7D 9D */	bl SetObj__16dBgS_PolyPassChkFv
/* 806710D0  38 7E 07 90 */	addi r3, r30, 0x790
/* 806710D4  4B A0 4D D9 */	bl __ct__12dBgS_AcchCirFv
lbl_806710D8:
/* 806710D8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 806710DC  60 00 00 08 */	ori r0, r0, 8
/* 806710E0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_806710E4:
/* 806710E4  7F E3 FB 78 */	mr r3, r31
/* 806710E8  4B FF FB 51 */	bl getArcName__11daBdoorL5_cFv
/* 806710EC  7C 64 1B 78 */	mr r4, r3
/* 806710F0  38 7F 05 68 */	addi r3, r31, 0x568
/* 806710F4  4B 9B BD C9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806710F8  2C 03 00 04 */	cmpwi r3, 4
/* 806710FC  41 82 00 08 */	beq lbl_80671104
/* 80671100  48 00 00 E4 */	b lbl_806711E4
lbl_80671104:
/* 80671104  7F E3 FB 78 */	mr r3, r31
/* 80671108  4B FF FB 6D */	bl getAnmArcName__11daBdoorL5_cFv
/* 8067110C  7C 64 1B 78 */	mr r4, r3
/* 80671110  38 7F 05 78 */	addi r3, r31, 0x578
/* 80671114  4B 9B BD A9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80671118  2C 03 00 04 */	cmpwi r3, 4
/* 8067111C  41 82 00 08 */	beq lbl_80671124
/* 80671120  48 00 00 C4 */	b lbl_806711E4
lbl_80671124:
/* 80671124  7F E3 FB 78 */	mr r3, r31
/* 80671128  4B FF FB 1D */	bl getAlwaysArcName__11daBdoorL5_cFv
/* 8067112C  7C 64 1B 78 */	mr r4, r3
/* 80671130  38 7F 05 70 */	addi r3, r31, 0x570
/* 80671134  4B 9B BD 89 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80671138  2C 03 00 04 */	cmpwi r3, 4
/* 8067113C  41 82 00 08 */	beq lbl_80671144
/* 80671140  48 00 00 A4 */	b lbl_806711E4
lbl_80671144:
/* 80671144  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80671148  7C 1E 07 74 */	extsb r30, r0
/* 8067114C  7F E3 FB 78 */	mr r3, r31
/* 80671150  4B 9C 90 81 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80671154  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80671158  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067115C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80671160  7F C5 F3 78 */	mr r5, r30
/* 80671164  4B 9C 41 FD */	bl isSwitch__10dSv_info_cCFii
/* 80671168  2C 03 00 00 */	cmpwi r3, 0
/* 8067116C  40 82 00 38 */	bne lbl_806711A4
/* 80671170  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80671174  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80671178  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8067117C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80671180  7D 89 03 A6 */	mtctr r12
/* 80671184  4E 80 04 21 */	bctrl 
/* 80671188  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8067118C  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 80671190  28 00 00 03 */	cmplwi r0, 3
/* 80671194  41 82 00 10 */	beq lbl_806711A4
/* 80671198  7F E3 FB 78 */	mr r3, r31
/* 8067119C  48 00 09 79 */	bl createKey__11daBdoorL5_cFv
/* 806711A0  48 00 00 0C */	b lbl_806711AC
lbl_806711A4:
/* 806711A4  38 00 FF FF */	li r0, -1
/* 806711A8  90 1F 05 8C */	stw r0, 0x58c(r31)
lbl_806711AC:
/* 806711AC  7F E3 FB 78 */	mr r3, r31
/* 806711B0  3C 80 80 67 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x80670CF0@ha */
/* 806711B4  38 84 0C F0 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x80670CF0@l */
/* 806711B8  38 A0 0D 40 */	li r5, 0xd40
/* 806711BC  4B 9A 92 F5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806711C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806711C4  40 82 00 0C */	bne lbl_806711D0
/* 806711C8  38 60 00 05 */	li r3, 5
/* 806711CC  48 00 00 18 */	b lbl_806711E4
lbl_806711D0:
/* 806711D0  7F E3 FB 78 */	mr r3, r31
/* 806711D4  4B FF FD 89 */	bl CreateInit__11daBdoorL5_cFv
/* 806711D8  20 03 00 00 */	subfic r0, r3, 0
/* 806711DC  7C 60 01 10 */	subfe r3, r0, r0
/* 806711E0  38 63 00 05 */	addi r3, r3, 5
lbl_806711E4:
/* 806711E4  39 61 00 20 */	addi r11, r1, 0x20
/* 806711E8  4B CF 10 41 */	bl _restgpr_29
/* 806711EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806711F0  7C 08 03 A6 */	mtlr r0
/* 806711F4  38 21 00 20 */	addi r1, r1, 0x20
/* 806711F8  4E 80 00 20 */	blr 
