lbl_80483574:
/* 80483574  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80483578  7C 08 02 A6 */	mflr r0
/* 8048357C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80483580  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80483584  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80483588  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8048358C  4B ED EC 35 */	bl _savegpr_22
/* 80483590  7C BB 2B 78 */	mr r27, r5
/* 80483594  3C 60 80 48 */	lis r3, lit_1109@ha /* 0x80484FF8@ha */
/* 80483598  3B C3 4F F8 */	addi r30, r3, lit_1109@l /* 0x80484FF8@l */
/* 8048359C  3C 60 80 48 */	lis r3, M_bmd__Q211daObjSwpush5Act_c@ha /* 0x80484D10@ha */
/* 804835A0  3B E3 4D 10 */	addi r31, r3, M_bmd__Q211daObjSwpush5Act_c@l /* 0x80484D10@l */
/* 804835A4  7C 9C 23 78 */	mr r28, r4
/* 804835A8  80 05 04 9C */	lwz r0, 0x49c(r5)
/* 804835AC  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 804835B0  41 82 03 40 */	beq lbl_804838F0
/* 804835B4  88 1E 00 4C */	lbz r0, 0x4c(r30)
/* 804835B8  7C 00 07 75 */	extsb. r0, r0
/* 804835BC  40 82 00 F0 */	bne lbl_804836AC
/* 804835C0  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 804835C4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804835C8  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 804835CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804835D0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804835D4  D0 3E 00 74 */	stfs f1, 0x74(r30)
/* 804835D8  38 7E 00 74 */	addi r3, r30, 0x74
/* 804835DC  D0 03 00 04 */	stfs f0, 4(r3)
/* 804835E0  D0 23 00 08 */	stfs f1, 8(r3)
/* 804835E4  3C 80 80 48 */	lis r4, __dt__4cXyzFv@ha /* 0x80483450@ha */
/* 804835E8  38 84 34 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80483450@l */
/* 804835EC  38 BE 00 40 */	addi r5, r30, 0x40
/* 804835F0  4B FF F6 E9 */	bl __register_global_object
/* 804835F4  C0 5F 01 2C */	lfs f2, 0x12c(r31)
/* 804835F8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 804835FC  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 80483600  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80483604  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80483608  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8048360C  38 7E 00 74 */	addi r3, r30, 0x74
/* 80483610  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80483614  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80483618  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8048361C  38 63 00 0C */	addi r3, r3, 0xc
/* 80483620  3C 80 80 48 */	lis r4, __dt__4cXyzFv@ha /* 0x80483450@ha */
/* 80483624  38 84 34 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80483450@l */
/* 80483628  38 BE 00 50 */	addi r5, r30, 0x50
/* 8048362C  4B FF F6 AD */	bl __register_global_object
/* 80483630  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80483634  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80483638  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8048363C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80483640  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80483644  38 7E 00 74 */	addi r3, r30, 0x74
/* 80483648  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 8048364C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80483650  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80483654  38 63 00 18 */	addi r3, r3, 0x18
/* 80483658  3C 80 80 48 */	lis r4, __dt__4cXyzFv@ha /* 0x80483450@ha */
/* 8048365C  38 84 34 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80483450@l */
/* 80483660  38 BE 00 5C */	addi r5, r30, 0x5c
/* 80483664  4B FF F6 75 */	bl __register_global_object
/* 80483668  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 8048366C  D0 41 00 08 */	stfs f2, 8(r1)
/* 80483670  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 80483674  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80483678  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 8048367C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80483680  38 7E 00 74 */	addi r3, r30, 0x74
/* 80483684  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80483688  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8048368C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80483690  38 63 00 24 */	addi r3, r3, 0x24
/* 80483694  3C 80 80 48 */	lis r4, __dt__4cXyzFv@ha /* 0x80483450@ha */
/* 80483698  38 84 34 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80483450@l */
/* 8048369C  38 BE 00 68 */	addi r5, r30, 0x68
/* 804836A0  4B FF F6 39 */	bl __register_global_object
/* 804836A4  38 00 00 01 */	li r0, 1
/* 804836A8  98 1E 00 4C */	stb r0, 0x4c(r30)
lbl_804836AC:
/* 804836AC  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 804836B0  83 A3 00 9C */	lwz r29, 0x9c(r3)
/* 804836B4  3C 60 80 48 */	lis r3, __vt__8cM3dGPla@ha /* 0x80484FE4@ha */
/* 804836B8  38 03 4F E4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80484FE4@l */
/* 804836BC  90 01 00 84 */	stw r0, 0x84(r1)
/* 804836C0  3C 60 80 48 */	lis r3, __vt__8cM3dGTri@ha /* 0x80484FD8@ha */
/* 804836C4  38 03 4F D8 */	addi r0, r3, __vt__8cM3dGTri@l /* 0x80484FD8@l */
/* 804836C8  90 01 00 84 */	stw r0, 0x84(r1)
/* 804836CC  88 1C 05 C1 */	lbz r0, 0x5c1(r28)
/* 804836D0  28 00 00 00 */	cmplwi r0, 0
/* 804836D4  41 82 00 1C */	beq lbl_804836F0
/* 804836D8  80 1C 05 AC */	lwz r0, 0x5ac(r28)
/* 804836DC  1C 80 00 2C */	mulli r4, r0, 0x2c
/* 804836E0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 804836E4  38 04 00 24 */	addi r0, r4, 0x24
/* 804836E8  7F E3 04 2E */	lfsx f31, r3, r0
/* 804836EC  48 00 00 18 */	b lbl_80483704
lbl_804836F0:
/* 804836F0  80 1C 05 AC */	lwz r0, 0x5ac(r28)
/* 804836F4  1C 80 00 2C */	mulli r4, r0, 0x2c
/* 804836F8  38 7F 00 1C */	addi r3, r31, 0x1c
/* 804836FC  38 04 00 20 */	addi r0, r4, 0x20
/* 80483700  7F E3 04 2E */	lfsx f31, r3, r0
lbl_80483704:
/* 80483704  4B B8 95 C5 */	bl push__14mDoMtx_stack_cFv
/* 80483708  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8048370C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80483710  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80483714  4B B8 8C C9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80483718  FC 20 F8 90 */	fmr f1, f31
/* 8048371C  FC 40 F8 90 */	fmr f2, f31
/* 80483720  FC 60 F8 90 */	fmr f3, f31
/* 80483724  4B B8 97 15 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80483728  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 8048372C  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 80483730  FC 60 08 90 */	fmr f3, f1
/* 80483734  4B B8 97 05 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80483738  3A C0 00 00 */	li r22, 0
/* 8048373C  3B 40 00 00 */	li r26, 0
/* 80483740  3B 1F 00 F8 */	addi r24, r31, 0xf8
/* 80483744  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80483748  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_8048374C:
/* 8048374C  88 18 00 00 */	lbz r0, 0(r24)
/* 80483750  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80483754  7C 7D 02 14 */	add r3, r29, r0
/* 80483758  C0 03 00 00 */	lfs f0, 0(r3)
/* 8048375C  3A E1 00 44 */	addi r23, r1, 0x44
/* 80483760  7E F7 D2 14 */	add r23, r23, r26
/* 80483764  D0 17 00 00 */	stfs f0, 0(r23)
/* 80483768  C0 03 00 04 */	lfs f0, 4(r3)
/* 8048376C  D0 17 00 04 */	stfs f0, 4(r23)
/* 80483770  C0 03 00 08 */	lfs f0, 8(r3)
/* 80483774  D0 17 00 08 */	stfs f0, 8(r23)
/* 80483778  7F 23 CB 78 */	mr r3, r25
/* 8048377C  38 9E 00 74 */	addi r4, r30, 0x74
/* 80483780  7C 84 D2 14 */	add r4, r4, r26
/* 80483784  38 A1 00 38 */	addi r5, r1, 0x38
/* 80483788  4B EC 35 E5 */	bl PSMTXMultVec
/* 8048378C  7E E3 BB 78 */	mr r3, r23
/* 80483790  38 81 00 38 */	addi r4, r1, 0x38
/* 80483794  7E E5 BB 78 */	mr r5, r23
/* 80483798  4B EC 38 F9 */	bl PSVECAdd
/* 8048379C  3A D6 00 01 */	addi r22, r22, 1
/* 804837A0  2C 16 00 04 */	cmpwi r22, 4
/* 804837A4  3B 5A 00 0C */	addi r26, r26, 0xc
/* 804837A8  3B 18 00 01 */	addi r24, r24, 1
/* 804837AC  41 80 FF A0 */	blt lbl_8048374C
/* 804837B0  4B B8 95 65 */	bl pop__14mDoMtx_stack_cFv
/* 804837B4  3A C0 00 00 */	li r22, 0
/* 804837B8  3B A0 00 00 */	li r29, 0
lbl_804837BC:
/* 804837BC  38 DF 01 24 */	addi r6, r31, 0x124
/* 804837C0  7C C6 EA 14 */	add r6, r6, r29
/* 804837C4  38 61 00 74 */	addi r3, r1, 0x74
/* 804837C8  88 06 00 00 */	lbz r0, 0(r6)
/* 804837CC  7C 00 07 74 */	extsb r0, r0
/* 804837D0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 804837D4  38 81 00 44 */	addi r4, r1, 0x44
/* 804837D8  7C 84 02 14 */	add r4, r4, r0
/* 804837DC  88 06 00 01 */	lbz r0, 1(r6)
/* 804837E0  7C 00 07 74 */	extsb r0, r0
/* 804837E4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 804837E8  38 A1 00 44 */	addi r5, r1, 0x44
/* 804837EC  7C A5 02 14 */	add r5, r5, r0
/* 804837F0  88 06 00 02 */	lbz r0, 2(r6)
/* 804837F4  7C 00 07 74 */	extsb r0, r0
/* 804837F8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 804837FC  38 C1 00 44 */	addi r6, r1, 0x44
/* 80483800  7C C6 02 14 */	add r6, r6, r0
/* 80483804  4B DE BF D9 */	bl setPos__8cM3dGTriFPC3VecPC3VecPC3Vec
/* 80483808  38 61 00 74 */	addi r3, r1, 0x74
/* 8048380C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80483810  4B DE 6A D5 */	bl cM3d_CrossY_Tri__FPC8cM3dGTriPC3Vec
/* 80483814  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80483818  41 82 00 B0 */	beq lbl_804838C8
/* 8048381C  7F 83 E3 78 */	mr r3, r28
/* 80483820  38 80 00 01 */	li r4, 1
/* 80483824  38 A0 00 1D */	li r5, 0x1d
/* 80483828  48 00 14 BD */	bl func_80484CE4
/* 8048382C  2C 03 00 00 */	cmpwi r3, 0
/* 80483830  41 82 00 18 */	beq lbl_80483848
/* 80483834  7F 83 E3 78 */	mr r3, r28
/* 80483838  A8 9B 00 0E */	lha r4, 0xe(r27)
/* 8048383C  48 00 10 55 */	bl check_ride_couple__Q211daObjSwpush5Act_cFs
/* 80483840  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80483844  41 82 00 94 */	beq lbl_804838D8
lbl_80483848:
/* 80483848  88 1B 04 9A */	lbz r0, 0x49a(r27)
/* 8048384C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80483850  41 82 00 10 */	beq lbl_80483860
/* 80483854  38 00 00 02 */	li r0, 2
/* 80483858  98 1C 05 C0 */	stb r0, 0x5c0(r28)
/* 8048385C  48 00 00 0C */	b lbl_80483868
lbl_80483860:
/* 80483860  38 00 00 01 */	li r0, 1
/* 80483864  98 1C 05 C0 */	stb r0, 0x5c0(r28)
lbl_80483868:
/* 80483868  A8 1B 00 0E */	lha r0, 0xe(r27)
/* 8048386C  20 00 00 FD */	subfic r0, r0, 0xfd
/* 80483870  7C 00 00 34 */	cntlzw r0, r0
/* 80483874  54 03 D9 7E */	srwi r3, r0, 5
/* 80483878  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 8048387C  41 82 00 0C */	beq lbl_80483888
/* 80483880  38 00 00 04 */	li r0, 4
/* 80483884  98 1C 05 BF */	stb r0, 0x5bf(r28)
lbl_80483888:
/* 80483888  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8048388C  41 82 00 18 */	beq lbl_804838A4
/* 80483890  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 80483894  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80483898  41 82 00 0C */	beq lbl_804838A4
/* 8048389C  38 00 00 01 */	li r0, 1
/* 804838A0  98 1C 05 C6 */	stb r0, 0x5c6(r28)
lbl_804838A4:
/* 804838A4  A8 1B 00 0E */	lha r0, 0xe(r27)
/* 804838A8  2C 00 02 EE */	cmpwi r0, 0x2ee
/* 804838AC  40 82 00 10 */	bne lbl_804838BC
/* 804838B0  38 00 00 01 */	li r0, 1
/* 804838B4  98 1C 05 C5 */	stb r0, 0x5c5(r28)
/* 804838B8  48 00 00 20 */	b lbl_804838D8
lbl_804838BC:
/* 804838BC  38 00 00 00 */	li r0, 0
/* 804838C0  98 1C 05 C5 */	stb r0, 0x5c5(r28)
/* 804838C4  48 00 00 14 */	b lbl_804838D8
lbl_804838C8:
/* 804838C8  3A D6 00 01 */	addi r22, r22, 1
/* 804838CC  2C 16 00 02 */	cmpwi r22, 2
/* 804838D0  3B BD 00 03 */	addi r29, r29, 3
/* 804838D4  41 80 FE E8 */	blt lbl_804837BC
lbl_804838D8:
/* 804838D8  3C 60 80 48 */	lis r3, __vt__8cM3dGTri@ha /* 0x80484FD8@ha */
/* 804838DC  38 03 4F D8 */	addi r0, r3, __vt__8cM3dGTri@l /* 0x80484FD8@l */
/* 804838E0  90 01 00 84 */	stw r0, 0x84(r1)
/* 804838E4  3C 60 80 48 */	lis r3, __vt__8cM3dGPla@ha /* 0x80484FE4@ha */
/* 804838E8  38 03 4F E4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80484FE4@l */
/* 804838EC  90 01 00 84 */	stw r0, 0x84(r1)
lbl_804838F0:
/* 804838F0  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 804838F4  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 804838F8  39 61 00 E0 */	addi r11, r1, 0xe0
/* 804838FC  4B ED E9 11 */	bl _restgpr_22
/* 80483900  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80483904  7C 08 03 A6 */	mtlr r0
/* 80483908  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8048390C  4E 80 00 20 */	blr 
