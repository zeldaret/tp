lbl_80D52604:
/* 80D52604  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D52608  7C 08 02 A6 */	mflr r0
/* 80D5260C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D52610  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80D52614  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80D52618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5261C  7C 7F 1B 78 */	mr r31, r3
/* 80D52620  3C 60 80 D5 */	lis r3, lit_3857@ha
/* 80D52624  C0 23 58 20 */	lfs f1, lit_3857@l(r3)
/* 80D52628  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D5262C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D52630  3C 60 80 D5 */	lis r3, lit_3858@ha
/* 80D52634  C8 43 58 24 */	lfd f2, lit_3858@l(r3)
/* 80D52638  4B 61 A1 48 */	b pow
/* 80D5263C  FF E0 08 18 */	frsp f31, f1
/* 80D52640  7F E3 FB 78 */	mr r3, r31
/* 80D52644  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D52648  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D5264C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80D52650  4B 2C 84 44 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D52654  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80D52658  40 80 02 74 */	bge lbl_80D528CC
/* 80D5265C  88 1F 05 DE */	lbz r0, 0x5de(r31)
/* 80D52660  28 00 00 00 */	cmplwi r0, 0
/* 80D52664  40 82 02 70 */	bne lbl_80D528D4
/* 80D52668  38 00 00 01 */	li r0, 1
/* 80D5266C  98 1F 05 DE */	stb r0, 0x5de(r31)
/* 80D52670  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D52674  2C 00 00 02 */	cmpwi r0, 2
/* 80D52678  41 82 01 3C */	beq lbl_80D527B4
/* 80D5267C  40 80 00 14 */	bge lbl_80D52690
/* 80D52680  2C 00 00 00 */	cmpwi r0, 0
/* 80D52684  41 82 00 18 */	beq lbl_80D5269C
/* 80D52688  40 80 00 A0 */	bge lbl_80D52728
/* 80D5268C  48 00 02 48 */	b lbl_80D528D4
lbl_80D52690:
/* 80D52690  2C 00 00 04 */	cmpwi r0, 4
/* 80D52694  40 80 02 40 */	bge lbl_80D528D4
/* 80D52698  48 00 01 A8 */	b lbl_80D52840
lbl_80D5269C:
/* 80D5269C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D526A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D526A4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D526A8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D526AC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D526B0  7C 05 07 74 */	extsb r5, r0
/* 80D526B4  4B 2E 2C AC */	b isSwitch__10dSv_info_cCFii
/* 80D526B8  2C 03 00 00 */	cmpwi r3, 0
/* 80D526BC  41 82 00 38 */	beq lbl_80D526F4
/* 80D526C0  38 00 00 02 */	li r0, 2
/* 80D526C4  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80D526C8  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 80D526CC  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D526D0  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D526D4  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D526D8  7C 00 22 14 */	add r0, r0, r4
/* 80D526DC  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80D526E0  7F E3 FB 78 */	mr r3, r31
/* 80D526E4  81 9F 05 84 */	lwz r12, 0x584(r31)
/* 80D526E8  4B 60 F9 9C */	b __ptmf_scall
/* 80D526EC  60 00 00 00 */	nop 
/* 80D526F0  48 00 01 E4 */	b lbl_80D528D4
lbl_80D526F4:
/* 80D526F4  38 00 00 01 */	li r0, 1
/* 80D526F8  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80D526FC  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 80D52700  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D52704  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D52708  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D5270C  7C 00 22 14 */	add r0, r0, r4
/* 80D52710  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80D52714  7F E3 FB 78 */	mr r3, r31
/* 80D52718  81 9F 05 84 */	lwz r12, 0x584(r31)
/* 80D5271C  4B 60 F9 68 */	b __ptmf_scall
/* 80D52720  60 00 00 00 */	nop 
/* 80D52724  48 00 01 B0 */	b lbl_80D528D4
lbl_80D52728:
/* 80D52728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5272C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D52730  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D52734  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D52738  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5273C  7C 05 07 74 */	extsb r5, r0
/* 80D52740  4B 2E 2C 20 */	b isSwitch__10dSv_info_cCFii
/* 80D52744  2C 03 00 00 */	cmpwi r3, 0
/* 80D52748  41 82 00 38 */	beq lbl_80D52780
/* 80D5274C  38 00 00 05 */	li r0, 5
/* 80D52750  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80D52754  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 80D52758  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D5275C  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D52760  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D52764  7C 00 22 14 */	add r0, r0, r4
/* 80D52768  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80D5276C  7F E3 FB 78 */	mr r3, r31
/* 80D52770  81 9F 05 84 */	lwz r12, 0x584(r31)
/* 80D52774  4B 60 F9 10 */	b __ptmf_scall
/* 80D52778  60 00 00 00 */	nop 
/* 80D5277C  48 00 01 58 */	b lbl_80D528D4
lbl_80D52780:
/* 80D52780  38 00 00 04 */	li r0, 4
/* 80D52784  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80D52788  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 80D5278C  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D52790  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D52794  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D52798  7C 00 22 14 */	add r0, r0, r4
/* 80D5279C  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80D527A0  7F E3 FB 78 */	mr r3, r31
/* 80D527A4  81 9F 05 84 */	lwz r12, 0x584(r31)
/* 80D527A8  4B 60 F8 DC */	b __ptmf_scall
/* 80D527AC  60 00 00 00 */	nop 
/* 80D527B0  48 00 01 24 */	b lbl_80D528D4
lbl_80D527B4:
/* 80D527B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D527B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D527BC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D527C0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D527C4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D527C8  7C 05 07 74 */	extsb r5, r0
/* 80D527CC  4B 2E 2B 94 */	b isSwitch__10dSv_info_cCFii
/* 80D527D0  2C 03 00 00 */	cmpwi r3, 0
/* 80D527D4  41 82 00 38 */	beq lbl_80D5280C
/* 80D527D8  38 00 00 08 */	li r0, 8
/* 80D527DC  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80D527E0  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 80D527E4  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D527E8  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D527EC  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D527F0  7C 00 22 14 */	add r0, r0, r4
/* 80D527F4  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80D527F8  7F E3 FB 78 */	mr r3, r31
/* 80D527FC  81 9F 05 84 */	lwz r12, 0x584(r31)
/* 80D52800  4B 60 F8 84 */	b __ptmf_scall
/* 80D52804  60 00 00 00 */	nop 
/* 80D52808  48 00 00 CC */	b lbl_80D528D4
lbl_80D5280C:
/* 80D5280C  38 00 00 07 */	li r0, 7
/* 80D52810  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80D52814  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 80D52818  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D5281C  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D52820  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D52824  7C 00 22 14 */	add r0, r0, r4
/* 80D52828  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80D5282C  7F E3 FB 78 */	mr r3, r31
/* 80D52830  81 9F 05 84 */	lwz r12, 0x584(r31)
/* 80D52834  4B 60 F8 50 */	b __ptmf_scall
/* 80D52838  60 00 00 00 */	nop 
/* 80D5283C  48 00 00 98 */	b lbl_80D528D4
lbl_80D52840:
/* 80D52840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D52844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D52848  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D5284C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D52850  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D52854  7C 05 07 74 */	extsb r5, r0
/* 80D52858  4B 2E 2B 08 */	b isSwitch__10dSv_info_cCFii
/* 80D5285C  2C 03 00 00 */	cmpwi r3, 0
/* 80D52860  41 82 00 38 */	beq lbl_80D52898
/* 80D52864  38 00 00 0B */	li r0, 0xb
/* 80D52868  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80D5286C  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 80D52870  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D52874  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D52878  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D5287C  7C 00 22 14 */	add r0, r0, r4
/* 80D52880  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80D52884  7F E3 FB 78 */	mr r3, r31
/* 80D52888  81 9F 05 84 */	lwz r12, 0x584(r31)
/* 80D5288C  4B 60 F7 F8 */	b __ptmf_scall
/* 80D52890  60 00 00 00 */	nop 
/* 80D52894  48 00 00 40 */	b lbl_80D528D4
lbl_80D52898:
/* 80D52898  38 00 00 0A */	li r0, 0xa
/* 80D5289C  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80D528A0  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 80D528A4  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D528A8  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D528AC  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D528B0  7C 00 22 14 */	add r0, r0, r4
/* 80D528B4  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80D528B8  7F E3 FB 78 */	mr r3, r31
/* 80D528BC  81 9F 05 84 */	lwz r12, 0x584(r31)
/* 80D528C0  4B 60 F7 C4 */	b __ptmf_scall
/* 80D528C4  60 00 00 00 */	nop 
/* 80D528C8  48 00 00 0C */	b lbl_80D528D4
lbl_80D528CC:
/* 80D528CC  38 00 00 00 */	li r0, 0
/* 80D528D0  98 1F 05 DE */	stb r0, 0x5de(r31)
lbl_80D528D4:
/* 80D528D4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80D528D8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80D528DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D528E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D528E4  7C 08 03 A6 */	mtlr r0
/* 80D528E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80D528EC  4E 80 00 20 */	blr 
