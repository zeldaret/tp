lbl_809CCFBC:
/* 809CCFBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809CCFC0  7C 08 02 A6 */	mflr r0
/* 809CCFC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809CCFC8  39 61 00 20 */	addi r11, r1, 0x20
/* 809CCFCC  4B 99 52 11 */	bl _savegpr_29
/* 809CCFD0  7C 7F 1B 78 */	mr r31, r3
/* 809CCFD4  4B 78 58 F5 */	bl initialize__8daNpcF_cFv
/* 809CCFD8  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 809CCFDC  4B 78 40 5D */	bl initialize__15daNpcF_Lookat_cFv
/* 809CCFE0  3B A0 00 00 */	li r29, 0
/* 809CCFE4  3B C0 00 00 */	li r30, 0
lbl_809CCFE8:
/* 809CCFE8  38 7E 0C B0 */	addi r3, r30, 0xcb0
/* 809CCFEC  7C 7F 1A 14 */	add r3, r31, r3
/* 809CCFF0  4B 78 36 C1 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809CCFF4  3B BD 00 01 */	addi r29, r29, 1
/* 809CCFF8  2C 1D 00 02 */	cmpwi r29, 2
/* 809CCFFC  3B DE 00 08 */	addi r30, r30, 8
/* 809CD000  41 80 FF E8 */	blt lbl_809CCFE8
/* 809CD004  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809CD008  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809CD00C  80 64 00 00 */	lwz r3, 0(r4)
/* 809CD010  80 04 00 04 */	lwz r0, 4(r4)
/* 809CD014  90 7F 0E 00 */	stw r3, 0xe00(r31)
/* 809CD018  90 1F 0E 04 */	stw r0, 0xe04(r31)
/* 809CD01C  80 04 00 08 */	lwz r0, 8(r4)
/* 809CD020  90 1F 0E 08 */	stw r0, 0xe08(r31)
/* 809CD024  80 64 00 00 */	lwz r3, 0(r4)
/* 809CD028  80 04 00 04 */	lwz r0, 4(r4)
/* 809CD02C  90 7F 0E 0C */	stw r3, 0xe0c(r31)
/* 809CD030  90 1F 0E 10 */	stw r0, 0xe10(r31)
/* 809CD034  80 04 00 08 */	lwz r0, 8(r4)
/* 809CD038  90 1F 0E 14 */	stw r0, 0xe14(r31)
/* 809CD03C  38 A0 00 00 */	li r5, 0
/* 809CD040  90 BF 0E 30 */	stw r5, 0xe30(r31)
/* 809CD044  90 BF 0E 34 */	stw r5, 0xe34(r31)
/* 809CD048  90 BF 0E 38 */	stw r5, 0xe38(r31)
/* 809CD04C  90 BF 0E 3C */	stw r5, 0xe3c(r31)
/* 809CD050  38 80 FF FF */	li r4, -1
/* 809CD054  B0 9F 0E 44 */	sth r4, 0xe44(r31)
/* 809CD058  B0 BF 0E 46 */	sth r5, 0xe46(r31)
/* 809CD05C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 809CD060  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 809CD064  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 809CD068  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 809CD06C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 809CD070  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 809CD074  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809CD078  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 809CD07C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809CD080  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 809CD084  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809CD088  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 809CD08C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 809CD090  B0 BF 04 DC */	sth r5, 0x4dc(r31)
/* 809CD094  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 809CD098  B0 BF 04 E0 */	sth r5, 0x4e0(r31)
/* 809CD09C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809CD0A0  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 809CD0A4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809CD0A8  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 809CD0AC  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809CD0B0  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 809CD0B4  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809CD0B8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 809CD0BC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809CD0C0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 809CD0C4  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809CD0C8  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 809CD0CC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809CD0D0  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 809CD0D4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809CD0D8  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 809CD0DC  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809CD0E0  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 809CD0E4  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809CD0E8  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 809CD0EC  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809CD0F0  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 809CD0F4  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809CD0F8  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 809CD0FC  3C 60 80 9D */	lis r3, lit_4455@ha /* 0x809CF59C@ha */
/* 809CD100  C0 03 F5 9C */	lfs f0, lit_4455@l(r3)  /* 0x809CF59C@l */
/* 809CD104  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809CD108  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809CD10C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809CD110  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 809CD114  38 00 00 01 */	li r0, 1
/* 809CD118  98 1F 09 EE */	stb r0, 0x9ee(r31)
/* 809CD11C  98 BF 0E 51 */	stb r5, 0xe51(r31)
/* 809CD120  98 BF 0E 50 */	stb r5, 0xe50(r31)
/* 809CD124  90 9F 0E 4C */	stw r4, 0xe4c(r31)
/* 809CD128  88 1F 0E 48 */	lbz r0, 0xe48(r31)
/* 809CD12C  28 00 00 03 */	cmplwi r0, 3
/* 809CD130  40 82 00 20 */	bne lbl_809CD150
/* 809CD134  38 60 01 79 */	li r3, 0x179
/* 809CD138  4B 78 84 FD */	bl daNpcF_chkEvtBit__FUl
/* 809CD13C  2C 03 00 00 */	cmpwi r3, 0
/* 809CD140  40 82 00 5C */	bne lbl_809CD19C
/* 809CD144  38 00 00 01 */	li r0, 1
/* 809CD148  98 1F 0E 50 */	stb r0, 0xe50(r31)
/* 809CD14C  48 00 00 50 */	b lbl_809CD19C
lbl_809CD150:
/* 809CD150  28 00 00 04 */	cmplwi r0, 4
/* 809CD154  40 82 00 48 */	bne lbl_809CD19C
/* 809CD158  7F E3 FB 78 */	mr r3, r31
/* 809CD15C  38 80 00 0E */	li r4, 0xe
/* 809CD160  3C A0 80 9D */	lis r5, lit_5043@ha /* 0x809CF5D4@ha */
/* 809CD164  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)  /* 0x809CF5D4@l */
/* 809CD168  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809CD16C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CD170  7D 89 03 A6 */	mtctr r12
/* 809CD174  4E 80 04 21 */	bctrl 
/* 809CD178  7F E3 FB 78 */	mr r3, r31
/* 809CD17C  38 80 00 05 */	li r4, 5
/* 809CD180  3C A0 80 9D */	lis r5, lit_5043@ha /* 0x809CF5D4@ha */
/* 809CD184  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)  /* 0x809CF5D4@l */
/* 809CD188  38 A0 00 00 */	li r5, 0
/* 809CD18C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809CD190  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809CD194  7D 89 03 A6 */	mtctr r12
/* 809CD198  4E 80 04 21 */	bctrl 
lbl_809CD19C:
/* 809CD19C  39 61 00 20 */	addi r11, r1, 0x20
/* 809CD1A0  4B 99 50 89 */	bl _restgpr_29
/* 809CD1A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809CD1A8  7C 08 03 A6 */	mtlr r0
/* 809CD1AC  38 21 00 20 */	addi r1, r1, 0x20
/* 809CD1B0  4E 80 00 20 */	blr 
