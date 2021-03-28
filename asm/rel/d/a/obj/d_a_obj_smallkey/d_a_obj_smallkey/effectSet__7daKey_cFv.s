lbl_80CDAFB4:
/* 80CDAFB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CDAFB8  7C 08 02 A6 */	mflr r0
/* 80CDAFBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CDAFC0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80CDAFC4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80CDAFC8  7C 7F 1B 78 */	mr r31, r3
/* 80CDAFCC  80 03 09 40 */	lwz r0, 0x940(r3)
/* 80CDAFD0  28 00 00 00 */	cmplwi r0, 0
/* 80CDAFD4  40 82 00 EC */	bne lbl_80CDB0C0
/* 80CDAFD8  3C 60 80 CE */	lis r3, lit_3879@ha
/* 80CDAFDC  C0 23 B8 54 */	lfs f1, lit_3879@l(r3)
/* 80CDAFE0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CDAFE4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CDAFE8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80CDAFEC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80CDAFF0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80CDAFF4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80CDAFF8  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80CDAFFC  B0 1F 09 64 */	sth r0, 0x964(r31)
/* 80CDB000  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80CDB004  B0 1F 09 66 */	sth r0, 0x966(r31)
/* 80CDB008  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 80CDB00C  B0 1F 09 68 */	sth r0, 0x968(r31)
/* 80CDB010  38 00 C0 00 */	li r0, -16384
/* 80CDB014  B0 1F 09 64 */	sth r0, 0x964(r31)
/* 80CDB018  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CDB01C  7C 04 07 74 */	extsb r4, r0
/* 80CDB020  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDB024  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80CDB028  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CDB02C  38 1F 09 3C */	addi r0, r31, 0x93c
/* 80CDB030  90 01 00 08 */	stw r0, 8(r1)
/* 80CDB034  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CDB038  38 00 00 00 */	li r0, 0
/* 80CDB03C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CDB040  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDB044  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CDB048  38 80 00 00 */	li r4, 0
/* 80CDB04C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082BE@ha */
/* 80CDB050  38 A5 82 BE */	addi r5, r5, 0x82BE /* 0x000082BE@l */
/* 80CDB054  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80CDB058  38 E0 00 00 */	li r7, 0
/* 80CDB05C  39 1F 09 64 */	addi r8, r31, 0x964
/* 80CDB060  39 21 00 2C */	addi r9, r1, 0x2c
/* 80CDB064  39 40 00 FF */	li r10, 0xff
/* 80CDB068  4B 37 1A 28 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CDB06C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CDB070  7C 04 07 74 */	extsb r4, r0
/* 80CDB074  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CDB078  38 1F 09 50 */	addi r0, r31, 0x950
/* 80CDB07C  90 01 00 08 */	stw r0, 8(r1)
/* 80CDB080  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CDB084  38 00 00 00 */	li r0, 0
/* 80CDB088  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CDB08C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDB090  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CDB094  38 80 00 00 */	li r4, 0
/* 80CDB098  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082BF@ha */
/* 80CDB09C  38 A5 82 BF */	addi r5, r5, 0x82BF /* 0x000082BF@l */
/* 80CDB0A0  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80CDB0A4  38 E0 00 00 */	li r7, 0
/* 80CDB0A8  39 1F 09 64 */	addi r8, r31, 0x964
/* 80CDB0AC  39 21 00 2C */	addi r9, r1, 0x2c
/* 80CDB0B0  39 40 00 FF */	li r10, 0xff
/* 80CDB0B4  3D 60 80 CE */	lis r11, lit_3879@ha
/* 80CDB0B8  C0 2B B8 54 */	lfs f1, lit_3879@l(r11)
/* 80CDB0BC  4B 37 19 D4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80CDB0C0:
/* 80CDB0C0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80CDB0C4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80CDB0C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CDB0CC  7C 08 03 A6 */	mtlr r0
/* 80CDB0D0  38 21 00 40 */	addi r1, r1, 0x40
/* 80CDB0D4  4E 80 00 20 */	blr 
