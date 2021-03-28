lbl_80673B9C:
/* 80673B9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80673BA0  7C 08 02 A6 */	mflr r0
/* 80673BA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80673BA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80673BAC  4B CE E6 30 */	b _savegpr_29
/* 80673BB0  7C 7F 1B 78 */	mr r31, r3
/* 80673BB4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80673BB8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80673BBC  40 82 00 58 */	bne lbl_80673C14
/* 80673BC0  7F E0 FB 79 */	or. r0, r31, r31
/* 80673BC4  41 82 00 44 */	beq lbl_80673C08
/* 80673BC8  7C 1E 03 78 */	mr r30, r0
/* 80673BCC  4B 9A 4F 98 */	b __ct__10fopAc_ac_cFv
/* 80673BD0  3B BE 06 04 */	addi r29, r30, 0x604
/* 80673BD4  7F A3 EB 78 */	mr r3, r29
/* 80673BD8  4B A0 24 C8 */	b __ct__9dBgS_AcchFv
/* 80673BDC  3C 60 80 67 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80673BE0  38 63 7D 04 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80673BE4  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80673BE8  38 03 00 0C */	addi r0, r3, 0xc
/* 80673BEC  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80673BF0  38 03 00 18 */	addi r0, r3, 0x18
/* 80673BF4  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80673BF8  38 7D 00 14 */	addi r3, r29, 0x14
/* 80673BFC  4B A0 52 6C */	b SetObj__16dBgS_PolyPassChkFv
/* 80673C00  38 7E 07 DC */	addi r3, r30, 0x7dc
/* 80673C04  4B A0 22 A8 */	b __ct__12dBgS_AcchCirFv
lbl_80673C08:
/* 80673C08  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80673C0C  60 00 00 08 */	ori r0, r0, 8
/* 80673C10  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80673C14:
/* 80673C14  7F E3 FB 78 */	mr r3, r31
/* 80673C18  4B FF F2 D1 */	bl getArcName__12daMBdoorL1_cFv
/* 80673C1C  7C 64 1B 78 */	mr r4, r3
/* 80673C20  38 7F 05 68 */	addi r3, r31, 0x568
/* 80673C24  4B 9B 92 98 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80673C28  2C 03 00 04 */	cmpwi r3, 4
/* 80673C2C  41 82 00 08 */	beq lbl_80673C34
/* 80673C30  48 00 01 50 */	b lbl_80673D80
lbl_80673C34:
/* 80673C34  7F E3 FB 78 */	mr r3, r31
/* 80673C38  4B FF F3 3D */	bl getAlwaysArcName__12daMBdoorL1_cFv
/* 80673C3C  7C 64 1B 78 */	mr r4, r3
/* 80673C40  38 7F 05 70 */	addi r3, r31, 0x570
/* 80673C44  4B 9B 92 78 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80673C48  2C 03 00 04 */	cmpwi r3, 4
/* 80673C4C  41 82 00 08 */	beq lbl_80673C54
/* 80673C50  48 00 01 30 */	b lbl_80673D80
lbl_80673C54:
/* 80673C54  7F E3 FB 78 */	mr r3, r31
/* 80673C58  4B FF F2 19 */	bl getAnmArcName__12daMBdoorL1_cFv
/* 80673C5C  28 03 00 00 */	cmplwi r3, 0
/* 80673C60  41 82 00 24 */	beq lbl_80673C84
/* 80673C64  7F E3 FB 78 */	mr r3, r31
/* 80673C68  4B FF F2 09 */	bl getAnmArcName__12daMBdoorL1_cFv
/* 80673C6C  7C 64 1B 78 */	mr r4, r3
/* 80673C70  38 7F 05 78 */	addi r3, r31, 0x578
/* 80673C74  4B 9B 92 48 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80673C78  2C 03 00 04 */	cmpwi r3, 4
/* 80673C7C  41 82 00 08 */	beq lbl_80673C84
/* 80673C80  48 00 01 00 */	b lbl_80673D80
lbl_80673C84:
/* 80673C84  7F E3 FB 78 */	mr r3, r31
/* 80673C88  4B FF EB B1 */	bl getNowLevel__FP10fopAc_ac_c
/* 80673C8C  2C 03 00 01 */	cmpwi r3, 1
/* 80673C90  40 82 00 44 */	bne lbl_80673CD4
/* 80673C94  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80673C98  2C 00 00 33 */	cmpwi r0, 0x33
/* 80673C9C  40 82 00 38 */	bne lbl_80673CD4
/* 80673CA0  3C 60 80 67 */	lis r3, searchStop__FPvPv@ha
/* 80673CA4  38 63 28 44 */	addi r3, r3, searchStop__FPvPv@l
/* 80673CA8  7F E4 FB 78 */	mr r4, r31
/* 80673CAC  4B 9A D6 8C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80673CB0  28 03 00 00 */	cmplwi r3, 0
/* 80673CB4  40 82 00 0C */	bne lbl_80673CC0
/* 80673CB8  38 60 00 00 */	li r3, 0
/* 80673CBC  48 00 00 C4 */	b lbl_80673D80
lbl_80673CC0:
/* 80673CC0  41 82 00 0C */	beq lbl_80673CCC
/* 80673CC4  80 03 00 04 */	lwz r0, 4(r3)
/* 80673CC8  48 00 00 08 */	b lbl_80673CD0
lbl_80673CCC:
/* 80673CCC  38 00 FF FF */	li r0, -1
lbl_80673CD0:
/* 80673CD0  90 1F 05 F0 */	stw r0, 0x5f0(r31)
lbl_80673CD4:
/* 80673CD4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80673CD8  7C 1E 07 74 */	extsb r30, r0
/* 80673CDC  7F E3 FB 78 */	mr r3, r31
/* 80673CE0  4B 9C 64 D8 */	b getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80673CE4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80673CE8  7C 1E 00 00 */	cmpw r30, r0
/* 80673CEC  40 82 00 10 */	bne lbl_80673CFC
/* 80673CF0  38 00 00 00 */	li r0, 0
/* 80673CF4  98 1F 05 DF */	stb r0, 0x5df(r31)
/* 80673CF8  48 00 00 0C */	b lbl_80673D04
lbl_80673CFC:
/* 80673CFC  38 00 00 01 */	li r0, 1
/* 80673D00  98 1F 05 DF */	stb r0, 0x5df(r31)
lbl_80673D04:
/* 80673D04  7F E3 FB 78 */	mr r3, r31
/* 80673D08  4B FF EB 31 */	bl getNowLevel__FP10fopAc_ac_c
/* 80673D0C  54 60 08 3C */	slwi r0, r3, 1
/* 80673D10  3C 60 80 67 */	lis r3, l_door_heap_size@ha
/* 80673D14  38 63 75 68 */	addi r3, r3, l_door_heap_size@l
/* 80673D18  7F C3 02 2E */	lhzx r30, r3, r0
/* 80673D1C  7F E3 FB 78 */	mr r3, r31
/* 80673D20  48 00 2D 95 */	bl checkMakeStop__12daMBdoorL1_cFv
/* 80673D24  2C 03 00 00 */	cmpwi r3, 0
/* 80673D28  41 82 00 20 */	beq lbl_80673D48
/* 80673D2C  7F E3 FB 78 */	mr r3, r31
/* 80673D30  4B FF EB 09 */	bl getNowLevel__FP10fopAc_ac_c
/* 80673D34  54 60 08 3C */	slwi r0, r3, 1
/* 80673D38  3C 60 80 67 */	lis r3, l_stop_heap_size@ha
/* 80673D3C  38 63 75 80 */	addi r3, r3, l_stop_heap_size@l
/* 80673D40  7C 03 02 2E */	lhzx r0, r3, r0
/* 80673D44  7F DE 02 14 */	add r30, r30, r0
lbl_80673D48:
/* 80673D48  7F E3 FB 78 */	mr r3, r31
/* 80673D4C  3C 80 80 67 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 80673D50  38 84 28 94 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 80673D54  7F C5 F3 78 */	mr r5, r30
/* 80673D58  4B 9A 67 58 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80673D5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80673D60  40 82 00 0C */	bne lbl_80673D6C
/* 80673D64  38 60 00 05 */	li r3, 5
/* 80673D68  48 00 00 18 */	b lbl_80673D80
lbl_80673D6C:
/* 80673D6C  7F E3 FB 78 */	mr r3, r31
/* 80673D70  4B FF FB 5D */	bl CreateInit__12daMBdoorL1_cFv
/* 80673D74  20 03 00 00 */	subfic r0, r3, 0
/* 80673D78  7C 60 01 10 */	subfe r3, r0, r0
/* 80673D7C  38 63 00 05 */	addi r3, r3, 5
lbl_80673D80:
/* 80673D80  39 61 00 20 */	addi r11, r1, 0x20
/* 80673D84  4B CE E4 A4 */	b _restgpr_29
/* 80673D88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80673D8C  7C 08 03 A6 */	mtlr r0
/* 80673D90  38 21 00 20 */	addi r1, r1, 0x20
/* 80673D94  4E 80 00 20 */	blr 
