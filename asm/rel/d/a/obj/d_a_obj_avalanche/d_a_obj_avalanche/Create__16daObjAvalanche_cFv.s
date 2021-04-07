lbl_80BA6FC8:
/* 80BA6FC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA6FCC  7C 08 02 A6 */	mflr r0
/* 80BA6FD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA6FD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BA6FD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BA6FDC  7C 7E 1B 78 */	mr r30, r3
/* 80BA6FE0  3C 60 80 BA */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BA7D70@ha */
/* 80BA6FE4  3B E3 7D 70 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80BA7D70@l */
/* 80BA6FE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA6FEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA6FF0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BA6FF4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BA6FF8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BA6FFC  7C 05 07 74 */	extsb r5, r0
/* 80BA7000  4B 48 E3 61 */	bl isSwitch__10dSv_info_cCFii
/* 80BA7004  2C 03 00 00 */	cmpwi r3, 0
/* 80BA7008  41 82 00 94 */	beq lbl_80BA709C
/* 80BA700C  3C 60 80 BA */	lis r3, lit_3663@ha /* 0x80BA7D1C@ha */
/* 80BA7010  C0 03 7D 1C */	lfs f0, lit_3663@l(r3)  /* 0x80BA7D1C@l */
/* 80BA7014  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80BA7018  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80BA701C  28 03 00 00 */	cmplwi r3, 0
/* 80BA7020  41 82 00 24 */	beq lbl_80BA7044
/* 80BA7024  4B 6C 11 B1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80BA7028  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA702C  41 82 00 18 */	beq lbl_80BA7044
/* 80BA7030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA7034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA7038  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BA703C  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80BA7040  4B 4C D2 11 */	bl Release__4cBgSFP9dBgW_Base
lbl_80BA7044:
/* 80BA7044  80 9E 05 B0 */	lwz r4, 0x5b0(r30)
/* 80BA7048  28 04 00 00 */	cmplwi r4, 0
/* 80BA704C  41 82 00 18 */	beq lbl_80BA7064
/* 80BA7050  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA7054  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA7058  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BA705C  7F C5 F3 78 */	mr r5, r30
/* 80BA7060  4B 4C D9 A9 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80BA7064:
/* 80BA7064  80 9E 05 AC */	lwz r4, 0x5ac(r30)
/* 80BA7068  A8 04 00 08 */	lha r0, 8(r4)
/* 80BA706C  3C 60 80 BA */	lis r3, lit_3718@ha /* 0x80BA7D24@ha */
/* 80BA7070  C8 23 7D 24 */	lfd f1, lit_3718@l(r3)  /* 0x80BA7D24@l */
/* 80BA7074  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BA7078  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA707C  3C 00 43 30 */	lis r0, 0x4330
/* 80BA7080  90 01 00 08 */	stw r0, 8(r1)
/* 80BA7084  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BA7088  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BA708C  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80BA7090  38 00 00 03 */	li r0, 3
/* 80BA7094  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80BA7098  48 00 00 48 */	b lbl_80BA70E0
lbl_80BA709C:
/* 80BA709C  3C 60 80 BA */	lis r3, lit_3716@ha /* 0x80BA7D20@ha */
/* 80BA70A0  C0 03 7D 20 */	lfs f0, lit_3716@l(r3)  /* 0x80BA7D20@l */
/* 80BA70A4  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80BA70A8  80 9E 05 B0 */	lwz r4, 0x5b0(r30)
/* 80BA70AC  28 04 00 00 */	cmplwi r4, 0
/* 80BA70B0  41 82 00 18 */	beq lbl_80BA70C8
/* 80BA70B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA70B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA70BC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BA70C0  7F C5 F3 78 */	mr r5, r30
/* 80BA70C4  4B 4C D9 45 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80BA70C8:
/* 80BA70C8  3C 60 80 BA */	lis r3, lit_3663@ha /* 0x80BA7D1C@ha */
/* 80BA70CC  C0 03 7D 1C */	lfs f0, lit_3663@l(r3)  /* 0x80BA7D1C@l */
/* 80BA70D0  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80BA70D4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80BA70D8  38 00 00 00 */	li r0, 0
/* 80BA70DC  98 1E 05 E8 */	stb r0, 0x5e8(r30)
lbl_80BA70E0:
/* 80BA70E0  7F C3 F3 78 */	mr r3, r30
/* 80BA70E4  4B FF FD F5 */	bl initBaseMtx__16daObjAvalanche_cFv
/* 80BA70E8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BA70EC  38 03 00 24 */	addi r0, r3, 0x24
/* 80BA70F0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BA70F4  7F C3 F3 78 */	mr r3, r30
/* 80BA70F8  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80BA70FC  38 9F 00 2C */	addi r4, r31, 0x2c
/* 80BA7100  C0 44 00 04 */	lfs f2, 4(r4)
/* 80BA7104  C0 64 00 08 */	lfs f3, 8(r4)
/* 80BA7108  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80BA710C  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80BA7110  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80BA7114  4B 47 34 35 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BA7118  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80BA711C  28 03 00 00 */	cmplwi r3, 0
/* 80BA7120  41 82 00 08 */	beq lbl_80BA7128
/* 80BA7124  4B 4D 48 9D */	bl Move__4dBgWFv
lbl_80BA7128:
/* 80BA7128  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BA712C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BA7130  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80BA7134  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80BA7138  90 1E 01 00 */	stw r0, 0x100(r30)
/* 80BA713C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA7140  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA7144  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80BA7148  7F C4 F3 78 */	mr r4, r30
/* 80BA714C  80 BF 00 24 */	lwz r5, 0x24(r31)
/* 80BA7150  38 C0 00 FF */	li r6, 0xff
/* 80BA7154  4B 4A 06 05 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80BA7158  B0 7E 05 F0 */	sth r3, 0x5f0(r30)
/* 80BA715C  38 60 00 01 */	li r3, 1
/* 80BA7160  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BA7164  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BA7168  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA716C  7C 08 03 A6 */	mtlr r0
/* 80BA7170  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA7174  4E 80 00 20 */	blr 
