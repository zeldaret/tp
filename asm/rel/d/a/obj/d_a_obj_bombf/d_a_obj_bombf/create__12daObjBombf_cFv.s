lbl_80BBAA84:
/* 80BBAA84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BBAA88  7C 08 02 A6 */	mflr r0
/* 80BBAA8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BBAA90  39 61 00 20 */	addi r11, r1, 0x20
/* 80BBAA94  4B 7A 77 48 */	b _savegpr_29
/* 80BBAA98  7C 7D 1B 78 */	mr r29, r3
/* 80BBAA9C  3C 80 80 BC */	lis r4, l_arcName@ha
/* 80BBAAA0  3B E4 AE 84 */	addi r31, r4, l_arcName@l
/* 80BBAAA4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BBAAA8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BBAAAC  40 82 00 1C */	bne lbl_80BBAAC8
/* 80BBAAB0  28 1D 00 00 */	cmplwi r29, 0
/* 80BBAAB4  41 82 00 08 */	beq lbl_80BBAABC
/* 80BBAAB8  4B 45 E0 AC */	b __ct__10fopAc_ac_cFv
lbl_80BBAABC:
/* 80BBAABC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80BBAAC0  60 00 00 08 */	ori r0, r0, 8
/* 80BBAAC4  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80BBAAC8:
/* 80BBAAC8  38 7D 05 68 */	addi r3, r29, 0x568
/* 80BBAACC  38 9F 00 00 */	addi r4, r31, 0
/* 80BBAAD0  4B 47 23 EC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BBAAD4  7C 7E 1B 78 */	mr r30, r3
/* 80BBAAD8  2C 1E 00 04 */	cmpwi r30, 4
/* 80BBAADC  40 82 00 A4 */	bne lbl_80BBAB80
/* 80BBAAE0  7F A3 EB 78 */	mr r3, r29
/* 80BBAAE4  3C 80 80 BC */	lis r4, daObjBombf_createHeap__FP10fopAc_ac_c@ha
/* 80BBAAE8  38 84 AA 64 */	addi r4, r4, daObjBombf_createHeap__FP10fopAc_ac_c@l
/* 80BBAAEC  38 A0 08 20 */	li r5, 0x820
/* 80BBAAF0  4B 45 F9 C0 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BBAAF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BBAAF8  40 82 00 0C */	bne lbl_80BBAB04
/* 80BBAAFC  38 60 00 05 */	li r3, 5
/* 80BBAB00  48 00 00 84 */	b lbl_80BBAB84
lbl_80BBAB04:
/* 80BBAB04  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80BBAB08  38 03 00 24 */	addi r0, r3, 0x24
/* 80BBAB0C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80BBAB10  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BBAB14  98 1D 04 8C */	stb r0, 0x48c(r29)
/* 80BBAB18  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BBAB1C  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80BBAB20  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BBAB24  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80BBAB28  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80BBAB2C  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80BBAB30  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 80BBAB34  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80BBAB38  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80BBAB3C  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80BBAB40  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 80BBAB44  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80BBAB48  38 00 FF FF */	li r0, -1
/* 80BBAB4C  90 1D 05 74 */	stw r0, 0x574(r29)
/* 80BBAB50  7F A3 EB 78 */	mr r3, r29
/* 80BBAB54  48 00 00 F9 */	bl setMatrix__12daObjBombf_cFv
/* 80BBAB58  7F A3 EB 78 */	mr r3, r29
/* 80BBAB5C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80BBAB60  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80BBAB64  FC 60 08 90 */	fmr f3, f1
/* 80BBAB68  4B 45 F9 C0 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80BBAB6C  7F A3 EB 78 */	mr r3, r29
/* 80BBAB70  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BBAB74  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80BBAB78  FC 60 08 90 */	fmr f3, f1
/* 80BBAB7C  4B 45 F9 BC */	b fopAcM_SetMax__FP10fopAc_ac_cfff
lbl_80BBAB80:
/* 80BBAB80  7F C3 F3 78 */	mr r3, r30
lbl_80BBAB84:
/* 80BBAB84  39 61 00 20 */	addi r11, r1, 0x20
/* 80BBAB88  4B 7A 76 A0 */	b _restgpr_29
/* 80BBAB8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BBAB90  7C 08 03 A6 */	mtlr r0
/* 80BBAB94  38 21 00 20 */	addi r1, r1, 0x20
/* 80BBAB98  4E 80 00 20 */	blr 
