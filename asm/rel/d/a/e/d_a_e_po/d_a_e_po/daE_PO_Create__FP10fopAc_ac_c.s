lbl_80756020:
/* 80756020  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80756024  7C 08 02 A6 */	mflr r0
/* 80756028  90 01 00 54 */	stw r0, 0x54(r1)
/* 8075602C  39 61 00 50 */	addi r11, r1, 0x50
/* 80756030  4B C0 C1 A0 */	b _savegpr_26
/* 80756034  7C 7F 1B 78 */	mr r31, r3
/* 80756038  3C 80 80 75 */	lis r4, cNullVec__6Z2Calc@ha
/* 8075603C  3B 84 7A A4 */	addi r28, r4, cNullVec__6Z2Calc@l
/* 80756040  3C 80 80 75 */	lis r4, lit_3917@ha
/* 80756044  3B C4 76 FC */	addi r30, r4, lit_3917@l
/* 80756048  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8075604C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80756050  40 82 00 1C */	bne lbl_8075606C
/* 80756054  28 1F 00 00 */	cmplwi r31, 0
/* 80756058  41 82 00 08 */	beq lbl_80756060
/* 8075605C  48 00 08 A5 */	bl __ct__10e_po_classFv
lbl_80756060:
/* 80756060  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80756064  60 00 00 08 */	ori r0, r0, 8
/* 80756068  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8075606C:
/* 8075606C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80756070  3C 80 80 75 */	lis r4, stringBase0@ha
/* 80756074  38 84 7A 88 */	addi r4, r4, stringBase0@l
/* 80756078  4B 8D 6E 44 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8075607C  7C 7D 1B 78 */	mr r29, r3
/* 80756080  2C 1D 00 04 */	cmpwi r29, 4
/* 80756084  40 82 08 60 */	bne lbl_807568E4
/* 80756088  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075608C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80756090  38 80 00 26 */	li r4, 0x26
/* 80756094  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80756098  7C 05 07 74 */	extsb r5, r0
/* 8075609C  4B 8D F2 C4 */	b isSwitch__10dSv_info_cCFii
/* 807560A0  2C 03 00 00 */	cmpwi r3, 0
/* 807560A4  41 82 00 0C */	beq lbl_807560B0
/* 807560A8  38 60 00 05 */	li r3, 5
/* 807560AC  48 00 08 3C */	b lbl_807568E8
lbl_807560B0:
/* 807560B0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807560B4  98 1F 05 BC */	stb r0, 0x5bc(r31)
/* 807560B8  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 807560BC  28 00 00 FF */	cmplwi r0, 0xff
/* 807560C0  40 82 00 0C */	bne lbl_807560CC
/* 807560C4  38 00 00 01 */	li r0, 1
/* 807560C8  98 1F 05 BC */	stb r0, 0x5bc(r31)
lbl_807560CC:
/* 807560CC  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 807560D0  28 00 00 00 */	cmplwi r0, 0
/* 807560D4  40 82 00 0C */	bne lbl_807560E0
/* 807560D8  38 00 00 01 */	li r0, 1
/* 807560DC  98 1F 05 C1 */	stb r0, 0x5c1(r31)
lbl_807560E0:
/* 807560E0  3C 60 80 75 */	lis r3, l_HIO@ha
/* 807560E4  38 63 7E 5C */	addi r3, r3, l_HIO@l
/* 807560E8  C0 03 00 08 */	lfs f0, 8(r3)
/* 807560EC  D0 1F 08 08 */	stfs f0, 0x808(r31)
/* 807560F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807560F4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 807560F8  98 1F 05 BD */	stb r0, 0x5bd(r31)
/* 807560FC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80756100  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80756104  98 1F 05 BE */	stb r0, 0x5be(r31)
/* 80756108  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8075610C  54 00 46 3E */	srwi r0, r0, 0x18
/* 80756110  98 1F 05 BF */	stb r0, 0x5bf(r31)
/* 80756114  7F E3 FB 78 */	mr r3, r31
/* 80756118  38 80 00 03 */	li r4, 3
/* 8075611C  4B FF 64 D1 */	bl mArg0Check__FP10e_po_classs
/* 80756120  2C 03 00 00 */	cmpwi r3, 0
/* 80756124  40 82 00 20 */	bne lbl_80756144
/* 80756128  7F E3 FB 78 */	mr r3, r31
/* 8075612C  38 80 00 FF */	li r4, 0xff
/* 80756130  4B FF 64 BD */	bl mArg0Check__FP10e_po_classs
/* 80756134  2C 03 00 02 */	cmpwi r3, 2
/* 80756138  40 82 00 0C */	bne lbl_80756144
/* 8075613C  38 00 00 FF */	li r0, 0xff
/* 80756140  98 1F 05 BE */	stb r0, 0x5be(r31)
lbl_80756144:
/* 80756144  7F E3 FB 78 */	mr r3, r31
/* 80756148  3C 80 80 75 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8075614C  38 84 5C 94 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80756150  38 A0 68 30 */	li r5, 0x6830
/* 80756154  4B 8C 43 5C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80756158  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8075615C  40 82 00 0C */	bne lbl_80756168
/* 80756160  38 60 00 05 */	li r3, 5
/* 80756164  48 00 07 84 */	b lbl_807568E8
lbl_80756168:
/* 80756168  3C 60 80 75 */	lis r3, struct_80757E4C+0x1@ha
/* 8075616C  8C 03 7E 4D */	lbzu r0, struct_80757E4C+0x1@l(r3)
/* 80756170  28 00 00 00 */	cmplwi r0, 0
/* 80756174  40 82 00 20 */	bne lbl_80756194
/* 80756178  38 00 00 01 */	li r0, 1
/* 8075617C  98 1F 0E CC */	stb r0, 0xecc(r31)
/* 80756180  98 03 00 00 */	stb r0, 0(r3)
/* 80756184  38 00 FF FF */	li r0, -1
/* 80756188  3C 60 80 75 */	lis r3, l_HIO@ha
/* 8075618C  38 63 7E 5C */	addi r3, r3, l_HIO@l
/* 80756190  98 03 00 04 */	stb r0, 4(r3)
lbl_80756194:
/* 80756194  38 00 00 00 */	li r0, 0
/* 80756198  90 01 00 08 */	stw r0, 8(r1)
/* 8075619C  38 7F 08 90 */	addi r3, r31, 0x890
/* 807561A0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807561A4  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 807561A8  7F E6 FB 78 */	mr r6, r31
/* 807561AC  38 E0 00 01 */	li r7, 1
/* 807561B0  39 1F 08 50 */	addi r8, r31, 0x850
/* 807561B4  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 807561B8  39 40 00 00 */	li r10, 0
/* 807561BC  4B 92 00 8C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807561C0  38 7F 08 50 */	addi r3, r31, 0x850
/* 807561C4  C0 3E 02 C4 */	lfs f1, 0x2c4(r30)
/* 807561C8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807561CC  4B 91 FD 8C */	b SetWall__12dBgS_AcchCirFff
/* 807561D0  38 7F 0A 6C */	addi r3, r31, 0xa6c
/* 807561D4  38 80 00 96 */	li r4, 0x96
/* 807561D8  38 A0 00 00 */	li r5, 0
/* 807561DC  7F E6 FB 78 */	mr r6, r31
/* 807561E0  4B 92 D6 80 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807561E4  38 7F 0A A8 */	addi r3, r31, 0xaa8
/* 807561E8  38 9C 01 D8 */	addi r4, r28, 0x1d8
/* 807561EC  4B 92 E6 C8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 807561F0  38 1F 0A 6C */	addi r0, r31, 0xa6c
/* 807561F4  90 1F 0A EC */	stw r0, 0xaec(r31)
/* 807561F8  3C 60 80 75 */	lis r3, mPo_tgHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 807561FC  38 03 5C 00 */	addi r0, r3, mPo_tgHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80756200  90 1F 0B 4C */	stw r0, 0xb4c(r31)
/* 80756204  38 7F 0D 1C */	addi r3, r31, 0xd1c
/* 80756208  38 9C 02 1C */	addi r4, r28, 0x21c
/* 8075620C  4B 92 E8 28 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80756210  38 1F 0A 6C */	addi r0, r31, 0xa6c
/* 80756214  90 1F 0D 60 */	stw r0, 0xd60(r31)
/* 80756218  38 00 00 5A */	li r0, 0x5a
/* 8075621C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80756220  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 80756224  7F E3 FB 78 */	mr r3, r31
/* 80756228  C0 3E 03 68 */	lfs f1, 0x368(r30)
/* 8075622C  FC 40 08 90 */	fmr f2, f1
/* 80756230  FC 60 08 90 */	fmr f3, f1
/* 80756234  4B 8C 42 F4 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80756238  7F E3 FB 78 */	mr r3, r31
/* 8075623C  C0 3E 03 10 */	lfs f1, 0x310(r30)
/* 80756240  FC 40 08 90 */	fmr f2, f1
/* 80756244  FC 60 08 90 */	fmr f3, f1
/* 80756248  4B 8C 42 F0 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8075624C  7F E3 FB 78 */	mr r3, r31
/* 80756250  38 80 00 FF */	li r4, 0xff
/* 80756254  4B FF 63 99 */	bl mArg0Check__FP10e_po_classs
/* 80756258  2C 03 00 02 */	cmpwi r3, 2
/* 8075625C  40 82 00 18 */	bne lbl_80756274
/* 80756260  A8 7C 00 3C */	lha r3, 0x3c(r28)
/* 80756264  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80756268  7C 03 00 00 */	cmpw r3, r0
/* 8075626C  40 80 00 08 */	bge lbl_80756274
/* 80756270  B0 7F 05 62 */	sth r3, 0x562(r31)
lbl_80756274:
/* 80756274  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80756278  D0 1F 07 94 */	stfs f0, 0x794(r31)
/* 8075627C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80756280  D0 1F 07 98 */	stfs f0, 0x798(r31)
/* 80756284  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80756288  D0 1F 07 9C */	stfs f0, 0x79c(r31)
/* 8075628C  3C 60 80 75 */	lis r3, l_HIO@ha
/* 80756290  38 63 7E 5C */	addi r3, r3, l_HIO@l
/* 80756294  A8 03 00 28 */	lha r0, 0x28(r3)
/* 80756298  C8 3E 03 40 */	lfd f1, 0x340(r30)
/* 8075629C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807562A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 807562A4  3C 00 43 30 */	lis r0, 0x4330
/* 807562A8  90 01 00 20 */	stw r0, 0x20(r1)
/* 807562AC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 807562B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 807562B4  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 807562B8  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 807562BC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807562C0  38 BF 05 38 */	addi r5, r31, 0x538
/* 807562C4  38 C0 00 03 */	li r6, 3
/* 807562C8  38 E0 00 01 */	li r7, 1
/* 807562CC  4B B6 AD C8 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807562D0  38 7F 06 9C */	addi r3, r31, 0x69c
/* 807562D4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807562D8  38 BF 05 38 */	addi r5, r31, 0x538
/* 807562DC  38 C0 00 03 */	li r6, 3
/* 807562E0  38 E0 00 01 */	li r7, 1
/* 807562E4  4B B6 AD B0 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807562E8  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 807562EC  3C 80 80 75 */	lis r4, stringBase0@ha
/* 807562F0  38 84 7A 88 */	addi r4, r4, stringBase0@l
/* 807562F4  38 84 00 15 */	addi r4, r4, 0x15
/* 807562F8  4B B6 B8 98 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 807562FC  38 1F 05 F8 */	addi r0, r31, 0x5f8
/* 80756300  90 1F 0E 5C */	stw r0, 0xe5c(r31)
/* 80756304  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80756308  4B B1 16 4C */	b cM_rndF__Ff
/* 8075630C  FC 00 08 1E */	fctiwz f0, f1
/* 80756310  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80756314  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80756318  B0 1F 07 40 */	sth r0, 0x740(r31)
/* 8075631C  38 00 00 00 */	li r0, 0
/* 80756320  B0 1F 07 42 */	sth r0, 0x742(r31)
/* 80756324  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80756328  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8075632C  88 03 12 C3 */	lbz r0, 0x12c3(r3)
/* 80756330  98 1F 07 FE */	stb r0, 0x7fe(r31)
/* 80756334  7F E3 FB 78 */	mr r3, r31
/* 80756338  38 80 00 03 */	li r4, 3
/* 8075633C  4B FF 62 B1 */	bl mArg0Check__FP10e_po_classs
/* 80756340  2C 03 00 00 */	cmpwi r3, 0
/* 80756344  40 82 00 48 */	bne lbl_8075638C
/* 80756348  7F E3 FB 78 */	mr r3, r31
/* 8075634C  38 80 00 FF */	li r4, 0xff
/* 80756350  4B FF 62 9D */	bl mArg0Check__FP10e_po_classs
/* 80756354  2C 03 00 02 */	cmpwi r3, 2
/* 80756358  40 82 00 34 */	bne lbl_8075638C
/* 8075635C  38 7F 08 90 */	addi r3, r31, 0x890
/* 80756360  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80756364  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80756368  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8075636C  4B 92 07 40 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80756370  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80756374  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80756378  B0 1F 07 E2 */	sth r0, 0x7e2(r31)
/* 8075637C  38 00 00 06 */	li r0, 6
/* 80756380  B0 1F 07 42 */	sth r0, 0x742(r31)
/* 80756384  38 00 00 19 */	li r0, 0x19
/* 80756388  98 1F 05 46 */	stb r0, 0x546(r31)
lbl_8075638C:
/* 8075638C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80756390  54 00 00 3E */	slwi r0, r0, 0
/* 80756394  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80756398  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8075639C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 807563A0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 807563A4  7F E3 FB 78 */	mr r3, r31
/* 807563A8  38 80 00 FF */	li r4, 0xff
/* 807563AC  4B FF 62 41 */	bl mArg0Check__FP10e_po_classs
/* 807563B0  2C 03 00 03 */	cmpwi r3, 3
/* 807563B4  41 82 00 18 */	beq lbl_807563CC
/* 807563B8  7F E3 FB 78 */	mr r3, r31
/* 807563BC  38 80 00 FF */	li r4, 0xff
/* 807563C0  4B FF 62 2D */	bl mArg0Check__FP10e_po_classs
/* 807563C4  2C 03 00 04 */	cmpwi r3, 4
/* 807563C8  40 82 02 60 */	bne lbl_80756628
lbl_807563CC:
/* 807563CC  38 00 00 FF */	li r0, 0xff
/* 807563D0  98 1F 05 BD */	stb r0, 0x5bd(r31)
/* 807563D4  38 00 00 14 */	li r0, 0x14
/* 807563D8  B0 1F 07 42 */	sth r0, 0x742(r31)
/* 807563DC  80 1F 0D 48 */	lwz r0, 0xd48(r31)
/* 807563E0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807563E4  90 1F 0D 48 */	stw r0, 0xd48(r31)
/* 807563E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807563EC  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 807563F0  D0 1F 08 08 */	stfs f0, 0x808(r31)
/* 807563F4  38 00 00 00 */	li r0, 0
/* 807563F8  98 1F 05 46 */	stb r0, 0x546(r31)
/* 807563FC  98 1F 04 96 */	stb r0, 0x496(r31)
/* 80756400  7F E3 FB 78 */	mr r3, r31
/* 80756404  38 80 00 07 */	li r4, 7
/* 80756408  4B FF 61 E5 */	bl mArg0Check__FP10e_po_classs
/* 8075640C  2C 03 00 00 */	cmpwi r3, 0
/* 80756410  41 82 01 90 */	beq lbl_807565A0
/* 80756414  38 00 00 01 */	li r0, 1
/* 80756418  98 1F 07 59 */	stb r0, 0x759(r31)
/* 8075641C  38 00 00 00 */	li r0, 0
/* 80756420  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80756424  3B 80 00 00 */	li r28, 0
/* 80756428  3B 40 00 00 */	li r26, 0
/* 8075642C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80756430  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
lbl_80756434:
/* 80756434  7F 63 DB 78 */	mr r3, r27
/* 80756438  38 9C 00 1E */	addi r4, r28, 0x1e
/* 8075643C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80756440  7C 05 07 74 */	extsb r5, r0
/* 80756444  4B 8D EF 1C */	b isSwitch__10dSv_info_cCFii
/* 80756448  2C 03 00 00 */	cmpwi r3, 0
/* 8075644C  41 82 00 08 */	beq lbl_80756454
/* 80756450  3B 5A 00 01 */	addi r26, r26, 1
lbl_80756454:
/* 80756454  3B 9C 00 01 */	addi r28, r28, 1
/* 80756458  2C 1C 00 04 */	cmpwi r28, 4
/* 8075645C  41 80 FF D8 */	blt lbl_80756434
/* 80756460  3B 60 00 00 */	li r27, 0
/* 80756464  93 7F 05 B4 */	stw r27, 0x5b4(r31)
/* 80756468  2C 1A 00 00 */	cmpwi r26, 0
/* 8075646C  40 82 00 78 */	bne lbl_807564E4
/* 80756470  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80756474  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80756478  38 80 00 43 */	li r4, 0x43
/* 8075647C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80756480  7C 05 07 74 */	extsb r5, r0
/* 80756484  4B 8D EE DC */	b isSwitch__10dSv_info_cCFii
/* 80756488  2C 03 00 00 */	cmpwi r3, 0
/* 8075648C  40 82 00 4C */	bne lbl_807564D8
/* 80756490  3B 80 00 00 */	li r28, 0
/* 80756494  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80756498  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
lbl_8075649C:
/* 8075649C  7F 63 DB 78 */	mr r3, r27
/* 807564A0  38 9C 00 22 */	addi r4, r28, 0x22
/* 807564A4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 807564A8  7C 05 07 74 */	extsb r5, r0
/* 807564AC  4B 8D ED 54 */	b onSwitch__10dSv_info_cFii
/* 807564B0  3B 9C 00 01 */	addi r28, r28, 1
/* 807564B4  2C 1C 00 04 */	cmpwi r28, 4
/* 807564B8  41 80 FF E4 */	blt lbl_8075649C
/* 807564BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807564C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807564C4  38 80 00 45 */	li r4, 0x45
/* 807564C8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 807564CC  7C 05 07 74 */	extsb r5, r0
/* 807564D0  4B 8D ED E0 */	b offSwitch__10dSv_info_cFii
/* 807564D4  48 00 01 28 */	b lbl_807565FC
lbl_807564D8:
/* 807564D8  38 00 03 E8 */	li r0, 0x3e8
/* 807564DC  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 807564E0  48 00 01 1C */	b lbl_807565FC
lbl_807564E4:
/* 807564E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807564E8  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
lbl_807564EC:
/* 807564EC  7F 83 E3 78 */	mr r3, r28
/* 807564F0  38 9B 00 1E */	addi r4, r27, 0x1e
/* 807564F4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 807564F8  7C 05 07 74 */	extsb r5, r0
/* 807564FC  4B 8D EE 64 */	b isSwitch__10dSv_info_cCFii
/* 80756500  2C 03 00 00 */	cmpwi r3, 0
/* 80756504  41 82 00 7C */	beq lbl_80756580
/* 80756508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075650C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80756510  38 9B 00 22 */	addi r4, r27, 0x22
/* 80756514  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80756518  7C 05 07 74 */	extsb r5, r0
/* 8075651C  4B 8D EE 44 */	b isSwitch__10dSv_info_cCFii
/* 80756520  2C 03 00 00 */	cmpwi r3, 0
/* 80756524  40 82 00 5C */	bne lbl_80756580
/* 80756528  2C 1B 00 00 */	cmpwi r27, 0
/* 8075652C  40 82 00 14 */	bne lbl_80756540
/* 80756530  A8 1F 07 E2 */	lha r0, 0x7e2(r31)
/* 80756534  60 00 00 01 */	ori r0, r0, 1
/* 80756538  B0 1F 07 E2 */	sth r0, 0x7e2(r31)
/* 8075653C  48 00 00 18 */	b lbl_80756554
lbl_80756540:
/* 80756540  A8 7F 07 E2 */	lha r3, 0x7e2(r31)
/* 80756544  38 00 00 01 */	li r0, 1
/* 80756548  7C 00 D8 30 */	slw r0, r0, r27
/* 8075654C  7C 60 03 78 */	or r0, r3, r0
/* 80756550  B0 1F 07 E2 */	sth r0, 0x7e2(r31)
lbl_80756554:
/* 80756554  38 00 00 01 */	li r0, 1
/* 80756558  98 1F 07 58 */	stb r0, 0x758(r31)
/* 8075655C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80756560  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 80756564  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 80756568  98 1F 07 59 */	stb r0, 0x759(r31)
/* 8075656C  38 00 00 64 */	li r0, 0x64
/* 80756570  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80756574  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80756578  60 00 40 00 */	ori r0, r0, 0x4000
/* 8075657C  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80756580:
/* 80756580  3B 7B 00 01 */	addi r27, r27, 1
/* 80756584  2C 1B 00 04 */	cmpwi r27, 4
/* 80756588  41 80 FF 64 */	blt lbl_807564EC
/* 8075658C  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80756590  2C 00 00 00 */	cmpwi r0, 0
/* 80756594  40 82 00 68 */	bne lbl_807565FC
/* 80756598  38 60 00 05 */	li r3, 5
/* 8075659C  48 00 03 4C */	b lbl_807568E8
lbl_807565A0:
/* 807565A0  7F E3 FB 78 */	mr r3, r31
/* 807565A4  38 80 00 FF */	li r4, 0xff
/* 807565A8  4B FF 60 45 */	bl mArg0Check__FP10e_po_classs
/* 807565AC  2C 03 00 03 */	cmpwi r3, 3
/* 807565B0  40 82 00 10 */	bne lbl_807565C0
/* 807565B4  38 00 00 0A */	li r0, 0xa
/* 807565B8  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 807565BC  48 00 00 40 */	b lbl_807565FC
lbl_807565C0:
/* 807565C0  7F E3 FB 78 */	mr r3, r31
/* 807565C4  38 80 00 FF */	li r4, 0xff
/* 807565C8  4B FF 60 25 */	bl mArg0Check__FP10e_po_classs
/* 807565CC  2C 03 00 04 */	cmpwi r3, 4
/* 807565D0  40 82 00 2C */	bne lbl_807565FC
/* 807565D4  38 00 00 01 */	li r0, 1
/* 807565D8  98 1F 07 58 */	stb r0, 0x758(r31)
/* 807565DC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807565E0  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 807565E4  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 807565E8  98 1F 07 59 */	stb r0, 0x759(r31)
/* 807565EC  38 00 00 00 */	li r0, 0
/* 807565F0  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 807565F4  38 00 00 C8 */	li r0, 0xc8
/* 807565F8  90 1F 05 B4 */	stw r0, 0x5b4(r31)
lbl_807565FC:
/* 807565FC  7F E3 FB 78 */	mr r3, r31
/* 80756600  38 80 00 15 */	li r4, 0x15
/* 80756604  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80756608  38 A0 00 00 */	li r5, 0
/* 8075660C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80756610  4B FF 60 51 */	bl anm_init__FP10e_po_classifUcf
/* 80756614  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80756618  38 00 00 96 */	li r0, 0x96
/* 8075661C  B0 03 00 12 */	sth r0, 0x12(r3)
/* 80756620  C0 1E 02 B0 */	lfs f0, 0x2b0(r30)
/* 80756624  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_80756628:
/* 80756628  38 7F 0E B4 */	addi r3, r31, 0xeb4
/* 8075662C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80756630  7C 85 23 78 */	mr r5, r4
/* 80756634  4B 8F 90 84 */	b setOldPosP__22dPa_hermiteEcallBack_cFPC4cXyzPC4cXyz
/* 80756638  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 8075663C  28 00 00 04 */	cmplwi r0, 4
/* 80756640  41 80 00 0C */	blt lbl_8075664C
/* 80756644  28 00 00 06 */	cmplwi r0, 6
/* 80756648  40 81 01 DC */	ble lbl_80756824
lbl_8075664C:
/* 8075664C  7F E3 FB 78 */	mr r3, r31
/* 80756650  38 80 00 FF */	li r4, 0xff
/* 80756654  4B FF 5F 99 */	bl mArg0Check__FP10e_po_classs
/* 80756658  2C 03 00 03 */	cmpwi r3, 3
/* 8075665C  41 82 01 C8 */	beq lbl_80756824
/* 80756660  7F E3 FB 78 */	mr r3, r31
/* 80756664  38 80 00 FF */	li r4, 0xff
/* 80756668  4B FF 5F 85 */	bl mArg0Check__FP10e_po_classs
/* 8075666C  2C 03 00 04 */	cmpwi r3, 4
/* 80756670  41 82 01 B4 */	beq lbl_80756824
/* 80756674  88 9F 05 BD */	lbz r4, 0x5bd(r31)
/* 80756678  28 04 00 FF */	cmplwi r4, 0xff
/* 8075667C  41 82 01 A8 */	beq lbl_80756824
/* 80756680  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80756684  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80756688  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8075668C  7C 05 07 74 */	extsb r5, r0
/* 80756690  4B 8D EC D0 */	b isSwitch__10dSv_info_cCFii
/* 80756694  2C 03 00 00 */	cmpwi r3, 0
/* 80756698  41 82 01 8C */	beq lbl_80756824
/* 8075669C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807566A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807566A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807566A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807566AC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 807566B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807566B4  38 00 00 0C */	li r0, 0xc
/* 807566B8  B0 1F 07 42 */	sth r0, 0x742(r31)
/* 807566BC  38 00 00 09 */	li r0, 9
/* 807566C0  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 807566C4  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 807566C8  80 63 00 04 */	lwz r3, 4(r3)
/* 807566CC  38 03 00 24 */	addi r0, r3, 0x24
/* 807566D0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 807566D4  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 807566D8  C0 3F 09 28 */	lfs f1, 0x928(r31)
/* 807566DC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807566E0  41 82 00 08 */	beq lbl_807566E8
/* 807566E4  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
lbl_807566E8:
/* 807566E8  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 807566EC  38 00 00 5F */	li r0, 0x5f
/* 807566F0  B0 03 00 12 */	sth r0, 0x12(r3)
/* 807566F4  C0 1E 03 6C */	lfs f0, 0x36c(r30)
/* 807566F8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 807566FC  38 00 00 02 */	li r0, 2
/* 80756700  B0 1F 07 4A */	sth r0, 0x74a(r31)
/* 80756704  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80756708  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 8075670C  7F E3 FB 78 */	mr r3, r31
/* 80756710  38 80 00 00 */	li r4, 0
/* 80756714  4B FF 5E D9 */	bl mArg0Check__FP10e_po_classs
/* 80756718  2C 03 00 00 */	cmpwi r3, 0
/* 8075671C  41 82 00 34 */	beq lbl_80756750
/* 80756720  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80756724  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80756728  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 8075672C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80756730  C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 80756734  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80756738  38 00 00 00 */	li r0, 0
/* 8075673C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80756740  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80756744  38 60 00 03 */	li r3, 3
/* 80756748  4B A5 20 9C */	b dKy_change_colpat__FUc
/* 8075674C  48 00 00 B4 */	b lbl_80756800
lbl_80756750:
/* 80756750  7F E3 FB 78 */	mr r3, r31
/* 80756754  38 80 00 01 */	li r4, 1
/* 80756758  4B FF 5E 95 */	bl mArg0Check__FP10e_po_classs
/* 8075675C  2C 03 00 00 */	cmpwi r3, 0
/* 80756760  41 82 00 2C */	beq lbl_8075678C
/* 80756764  C0 1E 03 70 */	lfs f0, 0x370(r30)
/* 80756768  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8075676C  C0 1E 02 B0 */	lfs f0, 0x2b0(r30)
/* 80756770  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80756774  C0 1E 03 74 */	lfs f0, 0x374(r30)
/* 80756778  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8075677C  38 00 00 00 */	li r0, 0
/* 80756780  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80756784  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80756788  48 00 00 78 */	b lbl_80756800
lbl_8075678C:
/* 8075678C  7F E3 FB 78 */	mr r3, r31
/* 80756790  38 80 00 02 */	li r4, 2
/* 80756794  4B FF 5E 59 */	bl mArg0Check__FP10e_po_classs
/* 80756798  2C 03 00 00 */	cmpwi r3, 0
/* 8075679C  41 82 00 2C */	beq lbl_807567C8
/* 807567A0  C0 1E 03 78 */	lfs f0, 0x378(r30)
/* 807567A4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807567A8  C0 1E 03 7C */	lfs f0, 0x37c(r30)
/* 807567AC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807567B0  C0 1E 03 80 */	lfs f0, 0x380(r30)
/* 807567B4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807567B8  38 00 40 00 */	li r0, 0x4000
/* 807567BC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807567C0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 807567C4  48 00 00 3C */	b lbl_80756800
lbl_807567C8:
/* 807567C8  7F E3 FB 78 */	mr r3, r31
/* 807567CC  38 80 00 03 */	li r4, 3
/* 807567D0  4B FF 5E 1D */	bl mArg0Check__FP10e_po_classs
/* 807567D4  2C 03 00 00 */	cmpwi r3, 0
/* 807567D8  41 82 00 28 */	beq lbl_80756800
/* 807567DC  C0 1E 03 84 */	lfs f0, 0x384(r30)
/* 807567E0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807567E4  C0 1E 03 88 */	lfs f0, 0x388(r30)
/* 807567E8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807567EC  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 807567F0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807567F4  38 00 80 00 */	li r0, -32768
/* 807567F8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807567FC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80756800:
/* 80756800  38 00 00 01 */	li r0, 1
/* 80756804  98 1F 07 58 */	stb r0, 0x758(r31)
/* 80756808  98 1F 07 5A */	stb r0, 0x75a(r31)
/* 8075680C  38 00 00 00 */	li r0, 0
/* 80756810  98 1F 07 57 */	stb r0, 0x757(r31)
/* 80756814  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80756818  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 8075681C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80756820  48 00 00 BC */	b lbl_807568DC
lbl_80756824:
/* 80756824  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 80756828  28 00 00 01 */	cmplwi r0, 1
/* 8075682C  41 80 00 18 */	blt lbl_80756844
/* 80756830  28 00 00 02 */	cmplwi r0, 2
/* 80756834  41 81 00 10 */	bgt lbl_80756844
/* 80756838  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8075683C  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80756840  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80756844:
/* 80756844  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80756848  80 63 00 04 */	lwz r3, 4(r3)
/* 8075684C  38 03 00 24 */	addi r0, r3, 0x24
/* 80756850  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80756854  7F E3 FB 78 */	mr r3, r31
/* 80756858  38 80 00 03 */	li r4, 3
/* 8075685C  4B FF 5D 91 */	bl mArg0Check__FP10e_po_classs
/* 80756860  2C 03 00 00 */	cmpwi r3, 0
/* 80756864  41 82 00 20 */	beq lbl_80756884
/* 80756868  38 7F 08 90 */	addi r3, r31, 0x890
/* 8075686C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80756870  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80756874  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80756878  4B 92 02 34 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8075687C  38 00 00 01 */	li r0, 1
/* 80756880  98 1F 05 C1 */	stb r0, 0x5c1(r31)
lbl_80756884:
/* 80756884  88 1F 05 C1 */	lbz r0, 0x5c1(r31)
/* 80756888  28 00 00 00 */	cmplwi r0, 0
/* 8075688C  41 82 00 0C */	beq lbl_80756898
/* 80756890  3C 00 00 40 */	lis r0, 0x40
/* 80756894  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80756898:
/* 80756898  7F E3 FB 78 */	mr r3, r31
/* 8075689C  38 80 00 00 */	li r4, 0
/* 807568A0  4B FF 5D 4D */	bl mArg0Check__FP10e_po_classs
/* 807568A4  2C 03 00 00 */	cmpwi r3, 0
/* 807568A8  41 82 00 34 */	beq lbl_807568DC
/* 807568AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807568B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807568B4  38 80 00 43 */	li r4, 0x43
/* 807568B8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 807568BC  7C 05 07 74 */	extsb r5, r0
/* 807568C0  4B 8D EA A0 */	b isSwitch__10dSv_info_cCFii
/* 807568C4  2C 03 00 00 */	cmpwi r3, 0
/* 807568C8  40 82 00 0C */	bne lbl_807568D4
/* 807568CC  38 60 00 05 */	li r3, 5
/* 807568D0  48 00 00 18 */	b lbl_807568E8
lbl_807568D4:
/* 807568D4  38 60 00 01 */	li r3, 1
/* 807568D8  4B A5 1F 0C */	b dKy_change_colpat__FUc
lbl_807568DC:
/* 807568DC  7F E3 FB 78 */	mr r3, r31
/* 807568E0  4B FF E8 0D */	bl daE_PO_Execute__FP10e_po_class
lbl_807568E4:
/* 807568E4  7F A3 EB 78 */	mr r3, r29
lbl_807568E8:
/* 807568E8  39 61 00 50 */	addi r11, r1, 0x50
/* 807568EC  4B C0 B9 30 */	b _restgpr_26
/* 807568F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807568F4  7C 08 03 A6 */	mtlr r0
/* 807568F8  38 21 00 50 */	addi r1, r1, 0x50
/* 807568FC  4E 80 00 20 */	blr 
