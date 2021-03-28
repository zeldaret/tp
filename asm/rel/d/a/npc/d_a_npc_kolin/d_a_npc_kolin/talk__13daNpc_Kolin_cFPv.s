lbl_80558E90:
/* 80558E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80558E94  7C 08 02 A6 */	mflr r0
/* 80558E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80558E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80558EA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80558EA4  7C 7F 1B 78 */	mr r31, r3
/* 80558EA8  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80558EAC  2C 00 00 02 */	cmpwi r0, 2
/* 80558EB0  41 82 00 74 */	beq lbl_80558F24
/* 80558EB4  40 80 01 E4 */	bge lbl_80559098
/* 80558EB8  2C 00 00 00 */	cmpwi r0, 0
/* 80558EBC  40 80 00 0C */	bge lbl_80558EC8
/* 80558EC0  48 00 01 D8 */	b lbl_80559098
/* 80558EC4  48 00 01 D4 */	b lbl_80559098
lbl_80558EC8:
/* 80558EC8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80558ECC  2C 00 00 00 */	cmpwi r0, 0
/* 80558ED0  40 82 00 54 */	bne lbl_80558F24
/* 80558ED4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80558ED8  2C 00 00 0F */	cmpwi r0, 0xf
/* 80558EDC  40 82 00 30 */	bne lbl_80558F0C
/* 80558EE0  2C 00 00 01 */	cmpwi r0, 1
/* 80558EE4  41 82 00 28 */	beq lbl_80558F0C
/* 80558EE8  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80558EEC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80558EF0  4B BE C9 A8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80558EF4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80558EF8  38 00 00 01 */	li r0, 1
/* 80558EFC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80558F00  3C 60 80 56 */	lis r3, lit_4742@ha
/* 80558F04  C0 03 A6 B8 */	lfs f0, lit_4742@l(r3)
/* 80558F08  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80558F0C:
/* 80558F0C  7F E3 FB 78 */	mr r3, r31
/* 80558F10  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80558F14  38 A0 00 00 */	li r5, 0
/* 80558F18  4B BF 2C D8 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80558F1C  38 00 00 02 */	li r0, 2
/* 80558F20  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80558F24:
/* 80558F24  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80558F28  2C 00 00 00 */	cmpwi r0, 0
/* 80558F2C  40 82 01 6C */	bne lbl_80559098
/* 80558F30  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80558F34  28 00 00 00 */	cmplwi r0, 0
/* 80558F38  40 82 00 20 */	bne lbl_80558F58
/* 80558F3C  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80558F40  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80558F44  7C 03 00 00 */	cmpw r3, r0
/* 80558F48  41 82 00 10 */	beq lbl_80558F58
/* 80558F4C  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80558F50  28 00 00 0A */	cmplwi r0, 0xa
/* 80558F54  40 82 00 EC */	bne lbl_80559040
lbl_80558F58:
/* 80558F58  7F E3 FB 78 */	mr r3, r31
/* 80558F5C  38 80 00 00 */	li r4, 0
/* 80558F60  38 A0 00 00 */	li r5, 0
/* 80558F64  38 C0 00 00 */	li r6, 0
/* 80558F68  38 E0 00 00 */	li r7, 0
/* 80558F6C  4B BF 2D 0C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80558F70  2C 03 00 00 */	cmpwi r3, 0
/* 80558F74  41 82 00 3C */	beq lbl_80558FB0
/* 80558F78  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80558F7C  28 00 00 01 */	cmplwi r0, 1
/* 80558F80  40 82 00 30 */	bne lbl_80558FB0
/* 80558F84  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80558F88  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80558F8C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80558F90  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80558F94  4B BE C7 4C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80558F98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80558F9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80558FA0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80558FA4  4B AE 94 C4 */	b reset__14dEvt_control_cFv
/* 80558FA8  38 00 00 03 */	li r0, 3
/* 80558FAC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80558FB0:
/* 80558FB0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80558FB4  2C 00 00 01 */	cmpwi r0, 1
/* 80558FB8  41 82 00 2C */	beq lbl_80558FE4
/* 80558FBC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80558FC0  4B BE C7 3C */	b remove__18daNpcT_ActorMngr_cFv
/* 80558FC4  38 00 00 00 */	li r0, 0
/* 80558FC8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80558FCC  3C 60 80 56 */	lis r3, lit_4110@ha
/* 80558FD0  C0 03 A6 A0 */	lfs f0, lit_4110@l(r3)
/* 80558FD4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80558FD8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80558FDC  38 00 00 01 */	li r0, 1
/* 80558FE0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80558FE4:
/* 80558FE4  38 00 00 00 */	li r0, 0
/* 80558FE8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80558FEC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80558FF0  28 00 00 00 */	cmplwi r0, 0
/* 80558FF4  40 82 00 10 */	bne lbl_80559004
/* 80558FF8  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80558FFC  28 00 00 0A */	cmplwi r0, 0xa
/* 80559000  40 82 00 98 */	bne lbl_80559098
lbl_80559004:
/* 80559004  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80559008  2C 00 00 00 */	cmpwi r0, 0
/* 8055900C  41 82 00 28 */	beq lbl_80559034
/* 80559010  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80559014  4B BE C6 E8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80559018  38 00 00 00 */	li r0, 0
/* 8055901C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80559020  3C 60 80 56 */	lis r3, lit_4110@ha
/* 80559024  C0 03 A6 A0 */	lfs f0, lit_4110@l(r3)
/* 80559028  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8055902C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80559030  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80559034:
/* 80559034  38 00 00 00 */	li r0, 0
/* 80559038  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8055903C  48 00 00 5C */	b lbl_80559098
lbl_80559040:
/* 80559040  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80559044  2C 00 00 01 */	cmpwi r0, 1
/* 80559048  41 82 00 2C */	beq lbl_80559074
/* 8055904C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80559050  4B BE C6 AC */	b remove__18daNpcT_ActorMngr_cFv
/* 80559054  38 00 00 00 */	li r0, 0
/* 80559058  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8055905C  3C 60 80 56 */	lis r3, lit_4110@ha
/* 80559060  C0 03 A6 A0 */	lfs f0, lit_4110@l(r3)
/* 80559064  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80559068  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8055906C  38 00 00 01 */	li r0, 1
/* 80559070  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80559074:
/* 80559074  38 00 00 00 */	li r0, 0
/* 80559078  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8055907C  7F E3 FB 78 */	mr r3, r31
/* 80559080  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80559084  38 A0 00 0D */	li r5, 0xd
/* 80559088  38 C0 00 0A */	li r6, 0xa
/* 8055908C  38 E0 00 0F */	li r7, 0xf
/* 80559090  39 00 00 00 */	li r8, 0
/* 80559094  4B BF 25 B4 */	b step__8daNpcT_cFsiiii
lbl_80559098:
/* 80559098  38 60 00 00 */	li r3, 0
/* 8055909C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805590A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805590A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805590A8  7C 08 03 A6 */	mtlr r0
/* 805590AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805590B0  4E 80 00 20 */	blr 
