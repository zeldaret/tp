lbl_80A462C8:
/* 80A462C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A462CC  7C 08 02 A6 */	mflr r0
/* 80A462D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A462D4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A462D8  4B 91 BF 04 */	b _savegpr_29
/* 80A462DC  7C 7F 1B 78 */	mr r31, r3
/* 80A462E0  3C 60 80 A5 */	lis r3, m__20daNpc_Kolinb_Param_c@ha
/* 80A462E4  3B C3 87 10 */	addi r30, r3, m__20daNpc_Kolinb_Param_c@l
/* 80A462E8  38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 80A462EC  38 1F 0F F8 */	addi r0, r31, 0xff8
/* 80A462F0  7F A3 00 50 */	subf r29, r3, r0
/* 80A462F4  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A462F8  28 03 00 00 */	cmplwi r3, 0
/* 80A462FC  41 82 00 08 */	beq lbl_80A46304
/* 80A46300  4B 6F F4 64 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80A46304:
/* 80A46304  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A46308  38 80 00 00 */	li r4, 0
/* 80A4630C  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A46310  7C A3 00 50 */	subf r5, r3, r0
/* 80A46314  4B 5B D1 44 */	b memset
/* 80A46318  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A4631C  4B 6F F5 7C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46320  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A46324  4B 6F F5 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46328  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A4632C  4B 6F F3 A8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A46330  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A46334  4B 6F F3 A0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A46338  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A4633C  4B 70 09 5C */	b initialize__15daNpcT_JntAnm_cFv
/* 80A46340  38 60 00 00 */	li r3, 0
/* 80A46344  38 80 00 00 */	li r4, 0
/* 80A46348  7C 87 23 78 */	mr r7, r4
/* 80A4634C  7C 86 23 78 */	mr r6, r4
/* 80A46350  7C 85 23 78 */	mr r5, r4
/* 80A46354  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80A46358  38 00 00 02 */	li r0, 2
/* 80A4635C  7C 09 03 A6 */	mtctr r0
lbl_80A46360:
/* 80A46360  7D 1F 22 14 */	add r8, r31, r4
/* 80A46364  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80A46368  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80A4636C  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80A46370  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A46374  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A46378  38 63 00 04 */	addi r3, r3, 4
/* 80A4637C  38 84 00 06 */	addi r4, r4, 6
/* 80A46380  42 00 FF E0 */	bdnz lbl_80A46360
/* 80A46384  38 00 00 00 */	li r0, 0
/* 80A46388  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A4638C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A46390  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A46394  38 00 FF FF */	li r0, -1
/* 80A46398  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A4639C  38 00 00 01 */	li r0, 1
/* 80A463A0  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A463A4  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80A463A8  4B 82 15 AC */	b cM_rndF__Ff
/* 80A463AC  FC 00 08 1E */	fctiwz f0, f1
/* 80A463B0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A463B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A463B8  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A463BC  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80A463C0  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A463C4  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A463C8  38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 80A463CC  38 80 00 00 */	li r4, 0
/* 80A463D0  7F A5 EB 78 */	mr r5, r29
/* 80A463D4  4B 5B D0 84 */	b memset
/* 80A463D8  38 60 00 00 */	li r3, 0
/* 80A463DC  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80A463E0  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80A463E4  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80A463E8  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80A463EC  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80A463F0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A463F4  90 01 00 08 */	stw r0, 8(r1)
/* 80A463F8  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80A463FC  7F E3 FB 78 */	mr r3, r31
/* 80A46400  38 81 00 08 */	addi r4, r1, 8
/* 80A46404  4B 70 45 98 */	b setAngle__8daNpcT_cF5csXyz
/* 80A46408  39 61 00 30 */	addi r11, r1, 0x30
/* 80A4640C  4B 91 BE 1C */	b _restgpr_29
/* 80A46410  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A46414  7C 08 03 A6 */	mtlr r0
/* 80A46418  38 21 00 30 */	addi r1, r1, 0x30
/* 80A4641C  4E 80 00 20 */	blr 
