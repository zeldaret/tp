lbl_809F4FF4:
/* 809F4FF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809F4FF8  7C 08 02 A6 */	mflr r0
/* 809F4FFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809F5000  39 61 00 20 */	addi r11, r1, 0x20
/* 809F5004  4B 96 D1 D8 */	b _savegpr_29
/* 809F5008  7C 7F 1B 78 */	mr r31, r3
/* 809F500C  4B 75 D8 BC */	b initialize__8daNpcF_cFv
/* 809F5010  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809F5014  4B 75 B7 24 */	b initialize__15daNpcF_MatAnm_cFv
/* 809F5018  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 809F501C  4B 75 C0 1C */	b initialize__15daNpcF_Lookat_cFv
/* 809F5020  3B A0 00 00 */	li r29, 0
/* 809F5024  3B C0 00 00 */	li r30, 0
lbl_809F5028:
/* 809F5028  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 809F502C  7C 7F 1A 14 */	add r3, r31, r3
/* 809F5030  4B 75 B6 80 */	b initialize__18daNpcF_ActorMngr_cFv
/* 809F5034  3B BD 00 01 */	addi r29, r29, 1
/* 809F5038  2C 1D 00 02 */	cmpwi r29, 2
/* 809F503C  3B DE 00 08 */	addi r30, r30, 8
/* 809F5040  41 80 FF E8 */	blt lbl_809F5028
/* 809F5044  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809F5048  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809F504C  80 64 00 00 */	lwz r3, 0(r4)
/* 809F5050  80 04 00 04 */	lwz r0, 4(r4)
/* 809F5054  90 7F 0D C8 */	stw r3, 0xdc8(r31)
/* 809F5058  90 1F 0D CC */	stw r0, 0xdcc(r31)
/* 809F505C  80 04 00 08 */	lwz r0, 8(r4)
/* 809F5060  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 809F5064  80 64 00 00 */	lwz r3, 0(r4)
/* 809F5068  80 04 00 04 */	lwz r0, 4(r4)
/* 809F506C  90 7F 0D D4 */	stw r3, 0xdd4(r31)
/* 809F5070  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 809F5074  80 04 00 08 */	lwz r0, 8(r4)
/* 809F5078  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 809F507C  38 80 00 00 */	li r4, 0
/* 809F5080  90 9F 0D F8 */	stw r4, 0xdf8(r31)
/* 809F5084  90 9F 0D FC */	stw r4, 0xdfc(r31)
/* 809F5088  90 9F 0E 00 */	stw r4, 0xe00(r31)
/* 809F508C  90 9F 0E 04 */	stw r4, 0xe04(r31)
/* 809F5090  38 00 FF FF */	li r0, -1
/* 809F5094  B0 1F 0E 0C */	sth r0, 0xe0c(r31)
/* 809F5098  B0 9F 0E 0E */	sth r4, 0xe0e(r31)
/* 809F509C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 809F50A0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 809F50A4  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 809F50A8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 809F50AC  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 809F50B0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 809F50B4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809F50B8  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 809F50BC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809F50C0  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 809F50C4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809F50C8  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 809F50CC  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 809F50D0  B0 9F 04 DC */	sth r4, 0x4dc(r31)
/* 809F50D4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 809F50D8  B0 9F 04 E0 */	sth r4, 0x4e0(r31)
/* 809F50DC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809F50E0  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 809F50E4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809F50E8  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 809F50EC  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809F50F0  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 809F50F4  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809F50F8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 809F50FC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809F5100  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 809F5104  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809F5108  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 809F510C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809F5110  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 809F5114  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809F5118  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 809F511C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809F5120  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 809F5124  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809F5128  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 809F512C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809F5130  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 809F5134  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809F5138  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 809F513C  3C 60 80 A0 */	lis r3, lit_4457@ha
/* 809F5140  C0 03 85 94 */	lfs f0, lit_4457@l(r3)
/* 809F5144  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809F5148  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809F514C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809F5150  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 809F5154  98 9F 0E 1C */	stb r4, 0xe1c(r31)
/* 809F5158  98 9F 0E 1D */	stb r4, 0xe1d(r31)
/* 809F515C  88 1F 0E 10 */	lbz r0, 0xe10(r31)
/* 809F5160  28 00 00 00 */	cmplwi r0, 0
/* 809F5164  40 82 00 88 */	bne lbl_809F51EC
/* 809F5168  88 1F 0E 11 */	lbz r0, 0xe11(r31)
/* 809F516C  7C 00 07 74 */	extsb r0, r0
/* 809F5170  54 00 08 3C */	slwi r0, r0, 1
/* 809F5174  3C 60 80 A0 */	lis r3, l_warpAppearFlag@ha
/* 809F5178  38 63 89 80 */	addi r3, r3, l_warpAppearFlag@l
/* 809F517C  7C 63 02 AE */	lhax r3, r3, r0
/* 809F5180  2C 03 FF FF */	cmpwi r3, -1
/* 809F5184  41 82 00 10 */	beq lbl_809F5194
/* 809F5188  4B 75 79 24 */	b daNpcT_chkEvtBit__FUl
/* 809F518C  2C 03 00 00 */	cmpwi r3, 0
/* 809F5190  41 82 00 30 */	beq lbl_809F51C0
lbl_809F5194:
/* 809F5194  88 1F 0E 11 */	lbz r0, 0xe11(r31)
/* 809F5198  7C 00 07 74 */	extsb r0, r0
/* 809F519C  54 00 08 3C */	slwi r0, r0, 1
/* 809F51A0  3C 60 80 A0 */	lis r3, l_appearTmpFlag@ha
/* 809F51A4  38 63 89 70 */	addi r3, r3, l_appearTmpFlag@l
/* 809F51A8  7C 63 02 AE */	lhax r3, r3, r0
/* 809F51AC  2C 03 FF FF */	cmpwi r3, -1
/* 809F51B0  41 82 00 3C */	beq lbl_809F51EC
/* 809F51B4  4B 75 79 B8 */	b daNpcT_chkTmpBit__FUl
/* 809F51B8  2C 03 00 00 */	cmpwi r3, 0
/* 809F51BC  41 82 00 30 */	beq lbl_809F51EC
lbl_809F51C0:
/* 809F51C0  88 1F 0E 11 */	lbz r0, 0xe11(r31)
/* 809F51C4  7C 00 07 74 */	extsb r0, r0
/* 809F51C8  54 00 08 3C */	slwi r0, r0, 1
/* 809F51CC  3C 60 80 A0 */	lis r3, l_appearTmpFlag@ha
/* 809F51D0  38 63 89 70 */	addi r3, r3, l_appearTmpFlag@l
/* 809F51D4  7C 63 02 AE */	lhax r3, r3, r0
/* 809F51D8  2C 03 FF FF */	cmpwi r3, -1
/* 809F51DC  41 82 00 08 */	beq lbl_809F51E4
/* 809F51E0  4B 75 79 4C */	b daNpcT_offTmpBit__FUl
lbl_809F51E4:
/* 809F51E4  38 00 00 01 */	li r0, 1
/* 809F51E8  98 1F 09 F2 */	stb r0, 0x9f2(r31)
lbl_809F51EC:
/* 809F51EC  38 00 00 01 */	li r0, 1
/* 809F51F0  98 1F 09 EE */	stb r0, 0x9ee(r31)
/* 809F51F4  39 61 00 20 */	addi r11, r1, 0x20
/* 809F51F8  4B 96 D0 30 */	b _restgpr_29
/* 809F51FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809F5200  7C 08 03 A6 */	mtlr r0
/* 809F5204  38 21 00 20 */	addi r1, r1, 0x20
/* 809F5208  4E 80 00 20 */	blr 
