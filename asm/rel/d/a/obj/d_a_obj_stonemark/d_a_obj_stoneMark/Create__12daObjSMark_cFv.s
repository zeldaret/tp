lbl_8059A080:
/* 8059A080  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059A084  7C 08 02 A6 */	mflr r0
/* 8059A088  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059A08C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059A090  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059A094  7C 7E 1B 78 */	mr r30, r3
/* 8059A098  3C 80 80 5A */	lis r4, lit_3642@ha /* 0x8059A3E8@ha */
/* 8059A09C  3B E4 A3 E8 */	addi r31, r4, lit_3642@l /* 0x8059A3E8@l */
/* 8059A0A0  4B FF FF 79 */	bl initBaseMtx__12daObjSMark_cFv
/* 8059A0A4  38 1E 07 E4 */	addi r0, r30, 0x7e4
/* 8059A0A8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8059A0AC  7F C3 F3 78 */	mr r3, r30
/* 8059A0B0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8059A0B4  FC 40 08 90 */	fmr f2, f1
/* 8059A0B8  FC 60 08 90 */	fmr f3, f1
/* 8059A0BC  C0 9F 00 04 */	lfs f4, 4(r31)
/* 8059A0C0  4B A8 04 A5 */	bl fopAcM_setCullSizeSphere__FP10fopAc_ac_cffff
/* 8059A0C4  38 7E 07 68 */	addi r3, r30, 0x768
/* 8059A0C8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8059A0CC  FC 40 08 90 */	fmr f2, f1
/* 8059A0D0  4B AD BE 89 */	bl SetWall__12dBgS_AcchCirFff
/* 8059A0D4  38 00 00 00 */	li r0, 0
/* 8059A0D8  90 01 00 08 */	stw r0, 8(r1)
/* 8059A0DC  38 7E 05 90 */	addi r3, r30, 0x590
/* 8059A0E0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8059A0E4  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 8059A0E8  7F C6 F3 78 */	mr r6, r30
/* 8059A0EC  38 E0 00 01 */	li r7, 1
/* 8059A0F0  39 1E 07 68 */	addi r8, r30, 0x768
/* 8059A0F4  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 8059A0F8  39 40 00 00 */	li r10, 0
/* 8059A0FC  4B AD C1 4D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8059A100  38 7E 05 90 */	addi r3, r30, 0x590
/* 8059A104  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059A108  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059A10C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8059A110  4B AD C9 9D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8059A114  3C 60 80 5A */	lis r3, l_arcName@ha /* 0x8059A410@ha */
/* 8059A118  38 63 A4 10 */	addi r3, r3, l_arcName@l /* 0x8059A410@l */
/* 8059A11C  80 63 00 00 */	lwz r3, 0(r3)
/* 8059A120  38 80 00 03 */	li r4, 3
/* 8059A124  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059A128  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059A12C  3C A5 00 02 */	addis r5, r5, 2
/* 8059A130  38 C0 00 80 */	li r6, 0x80
/* 8059A134  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8059A138  4B AA 21 B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8059A13C  38 9E 05 70 */	addi r4, r30, 0x570
/* 8059A140  38 A0 00 00 */	li r5, 0
/* 8059A144  38 C0 00 00 */	li r6, 0
/* 8059A148  4B A7 AF F5 */	bl mDoLib_setResTimgObj__FPC7ResTIMGP9_GXTexObjUlP10_GXTlutObj
/* 8059A14C  38 60 00 01 */	li r3, 1
/* 8059A150  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059A154  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059A158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059A15C  7C 08 03 A6 */	mtlr r0
/* 8059A160  38 21 00 20 */	addi r1, r1, 0x20
/* 8059A164  4E 80 00 20 */	blr 
