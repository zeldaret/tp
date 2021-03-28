lbl_804C3F04:
/* 804C3F04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C3F08  7C 08 02 A6 */	mflr r0
/* 804C3F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C3F10  39 61 00 20 */	addi r11, r1, 0x20
/* 804C3F14  4B E9 E2 C8 */	b _savegpr_29
/* 804C3F18  7C 7E 1B 78 */	mr r30, r3
/* 804C3F1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C3F20  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 804C3F24  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 804C3F28  28 00 00 00 */	cmplwi r0, 0
/* 804C3F2C  40 82 00 10 */	bne lbl_804C3F3C
/* 804C3F30  38 00 FF FF */	li r0, -1
/* 804C3F34  90 1E 08 8C */	stw r0, 0x88c(r30)
/* 804C3F38  48 00 00 24 */	b lbl_804C3F5C
lbl_804C3F3C:
/* 804C3F3C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 804C3F40  3C 80 80 4C */	lis r4, stringBase0@ha
/* 804C3F44  38 84 6A 60 */	addi r4, r4, stringBase0@l
/* 804C3F48  38 84 01 B1 */	addi r4, r4, 0x1b1
/* 804C3F4C  7F C5 F3 78 */	mr r5, r30
/* 804C3F50  38 C0 00 00 */	li r6, 0
/* 804C3F54  4B B8 3B C8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 804C3F58  90 7E 08 8C */	stw r3, 0x88c(r30)
lbl_804C3F5C:
/* 804C3F5C  38 00 00 00 */	li r0, 0
/* 804C3F60  88 7F 4F AD */	lbz r3, 0x4fad(r31)
/* 804C3F64  28 03 00 00 */	cmplwi r3, 0
/* 804C3F68  41 82 00 0C */	beq lbl_804C3F74
/* 804C3F6C  28 03 00 02 */	cmplwi r3, 2
/* 804C3F70  40 82 00 08 */	bne lbl_804C3F78
lbl_804C3F74:
/* 804C3F74  38 00 00 01 */	li r0, 1
lbl_804C3F78:
/* 804C3F78  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804C3F7C  41 82 00 AC */	beq lbl_804C4028
/* 804C3F80  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 804C3F84  28 00 00 00 */	cmplwi r0, 0
/* 804C3F88  41 82 00 5C */	beq lbl_804C3FE4
/* 804C3F8C  38 00 00 00 */	li r0, 0
/* 804C3F90  98 1E 08 4F */	stb r0, 0x84f(r30)
/* 804C3F94  90 1E 08 C0 */	stw r0, 0x8c0(r30)
/* 804C3F98  3C 60 80 4C */	lis r3, lit_4278@ha
/* 804C3F9C  C0 03 65 80 */	lfs f0, lit_4278@l(r3)
/* 804C3FA0  D0 1E 08 DC */	stfs f0, 0x8dc(r30)
/* 804C3FA4  7F C3 F3 78 */	mr r3, r30
/* 804C3FA8  4B FF C1 8D */	bl endHighModel__9daMidna_cFv
/* 804C3FAC  A0 1E 08 78 */	lhz r0, 0x878(r30)
/* 804C3FB0  28 00 00 FD */	cmplwi r0, 0xfd
/* 804C3FB4  40 82 00 0C */	bne lbl_804C3FC0
/* 804C3FB8  38 00 00 FE */	li r0, 0xfe
/* 804C3FBC  B0 1E 08 78 */	sth r0, 0x878(r30)
lbl_804C3FC0:
/* 804C3FC0  A0 1E 08 7A */	lhz r0, 0x87a(r30)
/* 804C3FC4  28 00 00 FD */	cmplwi r0, 0xfd
/* 804C3FC8  40 82 00 0C */	bne lbl_804C3FD4
/* 804C3FCC  38 00 00 FE */	li r0, 0xfe
/* 804C3FD0  B0 1E 08 7A */	sth r0, 0x87a(r30)
lbl_804C3FD4:
/* 804C3FD4  80 7E 08 94 */	lwz r3, 0x894(r30)
/* 804C3FD8  38 00 EF 00 */	li r0, -4352
/* 804C3FDC  7C 60 00 38 */	and r0, r3, r0
/* 804C3FE0  90 1E 08 94 */	stw r0, 0x894(r30)
lbl_804C3FE4:
/* 804C3FE4  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 804C3FE8  54 00 02 0A */	rlwinm r0, r0, 0, 8, 5
/* 804C3FEC  90 1E 08 90 */	stw r0, 0x890(r30)
/* 804C3FF0  80 9E 06 6C */	lwz r4, 0x66c(r30)
/* 804C3FF4  28 04 00 00 */	cmplwi r4, 0
/* 804C3FF8  41 82 00 24 */	beq lbl_804C401C
/* 804C3FFC  80 7E 06 AC */	lwz r3, 0x6ac(r30)
/* 804C4000  28 03 00 00 */	cmplwi r3, 0
/* 804C4004  41 82 00 10 */	beq lbl_804C4014
/* 804C4008  80 63 00 04 */	lwz r3, 4(r3)
/* 804C400C  38 63 00 58 */	addi r3, r3, 0x58
/* 804C4010  4B E6 B8 70 */	b removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_804C4014:
/* 804C4014  38 00 00 00 */	li r0, 0
/* 804C4018  90 1E 06 6C */	stw r0, 0x66c(r30)
lbl_804C401C:
/* 804C401C  38 00 00 00 */	li r0, 0
/* 804C4020  90 1E 06 68 */	stw r0, 0x668(r30)
/* 804C4024  48 00 03 58 */	b lbl_804C437C
lbl_804C4028:
/* 804C4028  3C 60 80 45 */	lis r3, m_object__7dDemo_c@ha
/* 804C402C  38 63 0E 20 */	addi r3, r3, m_object__7dDemo_c@l
/* 804C4030  80 63 00 00 */	lwz r3, 0(r3)
/* 804C4034  88 9E 04 98 */	lbz r4, 0x498(r30)
/* 804C4038  4B B7 50 50 */	b getActor__14dDemo_object_cFUc
/* 804C403C  28 03 00 00 */	cmplwi r3, 0
/* 804C4040  41 82 00 88 */	beq lbl_804C40C8
/* 804C4044  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 804C4048  90 03 00 48 */	stw r0, 0x48(r3)
/* 804C404C  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 804C4050  28 00 00 01 */	cmplwi r0, 1
/* 804C4054  41 82 00 18 */	beq lbl_804C406C
/* 804C4058  38 00 00 01 */	li r0, 1
/* 804C405C  98 1E 08 4F */	stb r0, 0x84f(r30)
/* 804C4060  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 804C4064  60 00 08 00 */	ori r0, r0, 0x800
/* 804C4068  90 1E 08 90 */	stw r0, 0x890(r30)
lbl_804C406C:
/* 804C406C  A0 03 00 04 */	lhz r0, 4(r3)
/* 804C4070  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804C4074  41 82 00 0C */	beq lbl_804C4080
/* 804C4078  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804C407C  90 1E 08 C0 */	stw r0, 0x8c0(r30)
lbl_804C4080:
/* 804C4080  A0 03 00 04 */	lhz r0, 4(r3)
/* 804C4084  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804C4088  41 82 00 1C */	beq lbl_804C40A4
/* 804C408C  C0 03 00 08 */	lfs f0, 8(r3)
/* 804C4090  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804C4094  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804C4098  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804C409C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 804C40A0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_804C40A4:
/* 804C40A4  A0 03 00 04 */	lhz r0, 4(r3)
/* 804C40A8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804C40AC  41 82 02 D0 */	beq lbl_804C437C
/* 804C40B0  38 80 00 00 */	li r4, 0
/* 804C40B4  B0 9E 04 E4 */	sth r4, 0x4e4(r30)
/* 804C40B8  A8 03 00 22 */	lha r0, 0x22(r3)
/* 804C40BC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 804C40C0  B0 9E 04 E8 */	sth r4, 0x4e8(r30)
/* 804C40C4  48 00 02 B8 */	b lbl_804C437C
lbl_804C40C8:
/* 804C40C8  80 1E 08 8C */	lwz r0, 0x88c(r30)
/* 804C40CC  2C 00 FF FF */	cmpwi r0, -1
/* 804C40D0  41 82 02 AC */	beq lbl_804C437C
/* 804C40D4  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 804C40D8  28 00 00 02 */	cmplwi r0, 2
/* 804C40DC  41 82 00 0C */	beq lbl_804C40E8
/* 804C40E0  38 00 00 02 */	li r0, 2
/* 804C40E4  98 1E 08 4F */	stb r0, 0x84f(r30)
lbl_804C40E8:
/* 804C40E8  3B FF 4F F8 */	addi r31, r31, 0x4ff8
/* 804C40EC  7F E3 FB 78 */	mr r3, r31
/* 804C40F0  80 9E 08 8C */	lwz r4, 0x88c(r30)
/* 804C40F4  4B B8 3E 68 */	b getMyNowCutName__16dEvent_manager_cFi
/* 804C40F8  28 03 00 00 */	cmplwi r3, 0
/* 804C40FC  41 82 01 7C */	beq lbl_804C4278
/* 804C4100  88 03 00 01 */	lbz r0, 1(r3)
/* 804C4104  7C 04 07 74 */	extsb r4, r0
/* 804C4108  88 03 00 00 */	lbz r0, 0(r3)
/* 804C410C  7C 03 07 74 */	extsb r3, r0
/* 804C4110  38 03 FF D0 */	addi r0, r3, -48
/* 804C4114  1C 00 00 0A */	mulli r0, r0, 0xa
/* 804C4118  7C 64 02 14 */	add r3, r4, r0
/* 804C411C  38 03 FF D0 */	addi r0, r3, -48
/* 804C4120  90 1E 08 C0 */	stw r0, 0x8c0(r30)
/* 804C4124  7F E3 FB 78 */	mr r3, r31
/* 804C4128  80 9E 08 8C */	lwz r4, 0x88c(r30)
/* 804C412C  3C A0 80 4C */	lis r5, stringBase0@ha
/* 804C4130  38 A5 6A 60 */	addi r5, r5, stringBase0@l
/* 804C4134  38 A5 01 B7 */	addi r5, r5, 0x1b7
/* 804C4138  38 C0 00 01 */	li r6, 1
/* 804C413C  4B B8 3F B0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 804C4140  28 03 00 00 */	cmplwi r3, 0
/* 804C4144  41 82 00 20 */	beq lbl_804C4164
/* 804C4148  C0 03 00 00 */	lfs f0, 0(r3)
/* 804C414C  D0 1E 09 B8 */	stfs f0, 0x9b8(r30)
/* 804C4150  C0 03 00 04 */	lfs f0, 4(r3)
/* 804C4154  D0 1E 09 BC */	stfs f0, 0x9bc(r30)
/* 804C4158  C0 03 00 08 */	lfs f0, 8(r3)
/* 804C415C  D0 1E 09 C0 */	stfs f0, 0x9c0(r30)
/* 804C4160  48 00 00 1C */	b lbl_804C417C
lbl_804C4164:
/* 804C4164  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804C4168  D0 1E 09 B8 */	stfs f0, 0x9b8(r30)
/* 804C416C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804C4170  D0 1E 09 BC */	stfs f0, 0x9bc(r30)
/* 804C4174  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804C4178  D0 1E 09 C0 */	stfs f0, 0x9c0(r30)
lbl_804C417C:
/* 804C417C  7F E3 FB 78 */	mr r3, r31
/* 804C4180  80 9E 08 8C */	lwz r4, 0x88c(r30)
/* 804C4184  3C A0 80 4C */	lis r5, stringBase0@ha
/* 804C4188  38 A5 6A 60 */	addi r5, r5, stringBase0@l
/* 804C418C  38 A5 01 BB */	addi r5, r5, 0x1bb
/* 804C4190  38 C0 00 00 */	li r6, 0
/* 804C4194  4B B8 3F 58 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 804C4198  28 03 00 00 */	cmplwi r3, 0
/* 804C419C  41 82 00 10 */	beq lbl_804C41AC
/* 804C41A0  C0 03 00 00 */	lfs f0, 0(r3)
/* 804C41A4  D0 1E 08 D8 */	stfs f0, 0x8d8(r30)
/* 804C41A8  48 00 00 10 */	b lbl_804C41B8
lbl_804C41AC:
/* 804C41AC  3C 60 80 4C */	lis r3, lit_7990@ha
/* 804C41B0  C0 03 69 6C */	lfs f0, lit_7990@l(r3)
/* 804C41B4  D0 1E 08 D8 */	stfs f0, 0x8d8(r30)
lbl_804C41B8:
/* 804C41B8  7F E3 FB 78 */	mr r3, r31
/* 804C41BC  80 9E 08 8C */	lwz r4, 0x88c(r30)
/* 804C41C0  3C A0 80 4C */	lis r5, stringBase0@ha
/* 804C41C4  38 A5 6A 60 */	addi r5, r5, stringBase0@l
/* 804C41C8  38 A5 01 C1 */	addi r5, r5, 0x1c1
/* 804C41CC  38 C0 00 03 */	li r6, 3
/* 804C41D0  4B B8 3F 1C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 804C41D4  28 03 00 00 */	cmplwi r3, 0
/* 804C41D8  41 82 00 10 */	beq lbl_804C41E8
/* 804C41DC  80 03 00 00 */	lwz r0, 0(r3)
/* 804C41E0  B0 1E 08 7C */	sth r0, 0x87c(r30)
/* 804C41E4  48 00 00 0C */	b lbl_804C41F0
lbl_804C41E8:
/* 804C41E8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804C41EC  B0 1E 08 7C */	sth r0, 0x87c(r30)
lbl_804C41F0:
/* 804C41F0  7F E3 FB 78 */	mr r3, r31
/* 804C41F4  80 9E 08 8C */	lwz r4, 0x88c(r30)
/* 804C41F8  3C A0 80 4C */	lis r5, stringBase0@ha
/* 804C41FC  38 A5 6A 60 */	addi r5, r5, stringBase0@l
/* 804C4200  38 A5 01 C7 */	addi r5, r5, 0x1c7
/* 804C4204  38 C0 00 01 */	li r6, 1
/* 804C4208  4B B8 3E E4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 804C420C  28 03 00 00 */	cmplwi r3, 0
/* 804C4210  41 82 00 28 */	beq lbl_804C4238
/* 804C4214  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 804C4218  64 00 00 02 */	oris r0, r0, 2
/* 804C421C  90 1E 08 90 */	stw r0, 0x890(r30)
/* 804C4220  C0 03 00 00 */	lfs f0, 0(r3)
/* 804C4224  D0 1E 09 C4 */	stfs f0, 0x9c4(r30)
/* 804C4228  C0 03 00 04 */	lfs f0, 4(r3)
/* 804C422C  D0 1E 09 C8 */	stfs f0, 0x9c8(r30)
/* 804C4230  C0 03 00 08 */	lfs f0, 8(r3)
/* 804C4234  D0 1E 09 CC */	stfs f0, 0x9cc(r30)
lbl_804C4238:
/* 804C4238  7F E3 FB 78 */	mr r3, r31
/* 804C423C  80 9E 08 8C */	lwz r4, 0x88c(r30)
/* 804C4240  3C A0 80 4C */	lis r5, stringBase0@ha
/* 804C4244  38 A5 6A 60 */	addi r5, r5, stringBase0@l
/* 804C4248  38 A5 01 CC */	addi r5, r5, 0x1cc
/* 804C424C  38 C0 00 00 */	li r6, 0
/* 804C4250  4B B8 3E 9C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 804C4254  28 03 00 00 */	cmplwi r3, 0
/* 804C4258  41 82 00 10 */	beq lbl_804C4268
/* 804C425C  C0 03 00 00 */	lfs f0, 0(r3)
/* 804C4260  D0 1E 08 DC */	stfs f0, 0x8dc(r30)
/* 804C4264  48 00 00 1C */	b lbl_804C4280
lbl_804C4268:
/* 804C4268  3C 60 80 4C */	lis r3, lit_4278@ha
/* 804C426C  C0 03 65 80 */	lfs f0, lit_4278@l(r3)
/* 804C4270  D0 1E 08 DC */	stfs f0, 0x8dc(r30)
/* 804C4274  48 00 00 0C */	b lbl_804C4280
lbl_804C4278:
/* 804C4278  38 00 00 01 */	li r0, 1
/* 804C427C  90 1E 08 C0 */	stw r0, 0x8c0(r30)
lbl_804C4280:
/* 804C4280  3B A0 00 01 */	li r29, 1
/* 804C4284  4B CE 82 F8 */	b dKy_darkworld_check__Fv
/* 804C4288  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804C428C  28 00 00 01 */	cmplwi r0, 1
/* 804C4290  41 82 00 24 */	beq lbl_804C42B4
/* 804C4294  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C4298  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C429C  38 63 00 28 */	addi r3, r3, 0x28
/* 804C42A0  38 80 00 03 */	li r4, 3
/* 804C42A4  4B B6 E9 48 */	b isTransformLV__21dSv_player_status_b_cCFi
/* 804C42A8  2C 03 00 00 */	cmpwi r3, 0
/* 804C42AC  40 82 00 08 */	bne lbl_804C42B4
/* 804C42B0  3B A0 00 00 */	li r29, 0
lbl_804C42B4:
/* 804C42B4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 804C42B8  40 82 00 60 */	bne lbl_804C4318
/* 804C42BC  38 00 00 00 */	li r0, 0
/* 804C42C0  88 7E 08 4E */	lbz r3, 0x84e(r30)
/* 804C42C4  28 03 00 03 */	cmplwi r3, 3
/* 804C42C8  41 82 00 14 */	beq lbl_804C42DC
/* 804C42CC  28 03 00 04 */	cmplwi r3, 4
/* 804C42D0  41 82 00 0C */	beq lbl_804C42DC
/* 804C42D4  28 03 00 02 */	cmplwi r3, 2
/* 804C42D8  40 82 00 08 */	bne lbl_804C42E0
lbl_804C42DC:
/* 804C42DC  38 00 00 01 */	li r0, 1
lbl_804C42E0:
/* 804C42E0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804C42E4  40 82 00 34 */	bne lbl_804C4318
/* 804C42E8  80 1E 08 C0 */	lwz r0, 0x8c0(r30)
/* 804C42EC  28 00 00 09 */	cmplwi r0, 9
/* 804C42F0  41 82 00 1C */	beq lbl_804C430C
/* 804C42F4  28 00 00 0B */	cmplwi r0, 0xb
/* 804C42F8  41 82 00 14 */	beq lbl_804C430C
/* 804C42FC  28 00 00 0D */	cmplwi r0, 0xd
/* 804C4300  41 82 00 0C */	beq lbl_804C430C
/* 804C4304  28 00 00 0C */	cmplwi r0, 0xc
/* 804C4308  40 82 00 10 */	bne lbl_804C4318
lbl_804C430C:
/* 804C430C  38 00 00 01 */	li r0, 1
/* 804C4310  90 1E 08 C0 */	stw r0, 0x8c0(r30)
/* 804C4314  48 00 00 1C */	b lbl_804C4330
lbl_804C4318:
/* 804C4318  80 1E 08 C0 */	lwz r0, 0x8c0(r30)
/* 804C431C  28 00 00 0D */	cmplwi r0, 0xd
/* 804C4320  40 82 00 10 */	bne lbl_804C4330
/* 804C4324  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 804C4328  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 804C432C  90 1E 08 90 */	stw r0, 0x890(r30)
lbl_804C4330:
/* 804C4330  80 1E 08 C0 */	lwz r0, 0x8c0(r30)
/* 804C4334  28 00 00 01 */	cmplwi r0, 1
/* 804C4338  41 82 00 20 */	beq lbl_804C4358
/* 804C433C  28 00 00 0B */	cmplwi r0, 0xb
/* 804C4340  41 82 00 18 */	beq lbl_804C4358
/* 804C4344  28 00 00 02 */	cmplwi r0, 2
/* 804C4348  40 82 00 34 */	bne lbl_804C437C
/* 804C434C  88 1E 08 4E */	lbz r0, 0x84e(r30)
/* 804C4350  28 00 00 03 */	cmplwi r0, 3
/* 804C4354  40 82 00 28 */	bne lbl_804C437C
lbl_804C4358:
/* 804C4358  7F E3 FB 78 */	mr r3, r31
/* 804C435C  80 9E 08 8C */	lwz r4, 0x88c(r30)
/* 804C4360  4B B8 3E 1C */	b cutEnd__16dEvent_manager_cFi
/* 804C4364  80 1E 08 C0 */	lwz r0, 0x8c0(r30)
/* 804C4368  28 00 00 01 */	cmplwi r0, 1
/* 804C436C  40 82 00 10 */	bne lbl_804C437C
/* 804C4370  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 804C4374  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 804C4378  90 1E 08 90 */	stw r0, 0x890(r30)
lbl_804C437C:
/* 804C437C  39 61 00 20 */	addi r11, r1, 0x20
/* 804C4380  4B E9 DE A8 */	b _restgpr_29
/* 804C4384  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C4388  7C 08 03 A6 */	mtlr r0
/* 804C438C  38 21 00 20 */	addi r1, r1, 0x20
/* 804C4390  4E 80 00 20 */	blr 
