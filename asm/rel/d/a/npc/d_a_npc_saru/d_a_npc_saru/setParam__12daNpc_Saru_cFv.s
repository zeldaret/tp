lbl_80AC0FDC:
/* 80AC0FDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC0FE0  7C 08 02 A6 */	mflr r0
/* 80AC0FE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC0FE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC0FEC  4B 8A 11 EC */	b _savegpr_28
/* 80AC0FF0  7C 7F 1B 78 */	mr r31, r3
/* 80AC0FF4  48 00 0B 3D */	bl selectAction__12daNpc_Saru_cFv
/* 80AC0FF8  7F E3 FB 78 */	mr r3, r31
/* 80AC0FFC  48 00 01 75 */	bl srchActors__12daNpc_Saru_cFv
/* 80AC1000  3B 80 00 0A */	li r28, 0xa
/* 80AC1004  3C 60 80 AC */	lis r3, m__18daNpc_Saru_Param_c@ha
/* 80AC1008  38 83 44 F8 */	addi r4, r3, m__18daNpc_Saru_Param_c@l
/* 80AC100C  AB A4 00 48 */	lha r29, 0x48(r4)
/* 80AC1010  AB C4 00 4A */	lha r30, 0x4a(r4)
/* 80AC1014  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80AC1018  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80AC101C  4B 68 B9 FC */	b daNpcT_getDistTableIdx__Fii
/* 80AC1020  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80AC1024  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80AC1028  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80AC102C  7F A3 07 34 */	extsh r3, r29
/* 80AC1030  7F C4 07 34 */	extsh r4, r30
/* 80AC1034  4B 68 B9 E4 */	b daNpcT_getDistTableIdx__Fii
/* 80AC1038  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80AC103C  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80AC1040  28 00 00 02 */	cmplwi r0, 2
/* 80AC1044  40 82 00 08 */	bne lbl_80AC104C
/* 80AC1048  3B 80 00 00 */	li r28, 0
lbl_80AC104C:
/* 80AC104C  93 9F 05 5C */	stw r28, 0x55c(r31)
/* 80AC1050  3C 60 80 AC */	lis r3, m__18daNpc_Saru_Param_c@ha
/* 80AC1054  38 63 44 F8 */	addi r3, r3, m__18daNpc_Saru_Param_c@l
/* 80AC1058  C0 03 00 08 */	lfs f0, 8(r3)
/* 80AC105C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80AC1060  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80AC1064  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80AC1068  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80AC106C  28 00 00 00 */	cmplwi r0, 0
/* 80AC1070  41 82 00 18 */	beq lbl_80AC1088
/* 80AC1074  3C 60 80 AC */	lis r3, lit_4593@ha
/* 80AC1078  C0 03 45 C8 */	lfs f0, lit_4593@l(r3)
/* 80AC107C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80AC1080  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80AC1084  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
lbl_80AC1088:
/* 80AC1088  3C 60 80 AC */	lis r3, m__18daNpc_Saru_Param_c@ha
/* 80AC108C  38 63 44 F8 */	addi r3, r3, m__18daNpc_Saru_Param_c@l
/* 80AC1090  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80AC1094  FC 00 00 1E */	fctiwz f0, f0
/* 80AC1098  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AC109C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AC10A0  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80AC10A4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80AC10A8  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80AC10AC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AC10B0  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80AC10B4  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80AC10B8  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80AC10BC  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AC10C0  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80AC10C4  4B 5B 4E 7C */	b SetWallR__12dBgS_AcchCirFf
/* 80AC10C8  3C 60 80 AC */	lis r3, m__18daNpc_Saru_Param_c@ha
/* 80AC10CC  38 63 44 F8 */	addi r3, r3, m__18daNpc_Saru_Param_c@l
/* 80AC10D0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AC10D4  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80AC10D8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AC10DC  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80AC10E0  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80AC10E4  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80AC10E8  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80AC10EC  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80AC10F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AC10F4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80AC10F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC10FC  4B 8A 11 28 */	b _restgpr_28
/* 80AC1100  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC1104  7C 08 03 A6 */	mtlr r0
/* 80AC1108  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC110C  4E 80 00 20 */	blr 
