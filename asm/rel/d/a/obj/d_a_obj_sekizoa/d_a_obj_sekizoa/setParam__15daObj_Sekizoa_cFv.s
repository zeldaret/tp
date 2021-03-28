lbl_80CCF3E4:
/* 80CCF3E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CCF3E8  7C 08 02 A6 */	mflr r0
/* 80CCF3EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CCF3F0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80CCF3F4  7C 7F 1B 78 */	mr r31, r3
/* 80CCF3F8  48 00 16 8D */	bl selectAction__15daObj_Sekizoa_cFv
/* 80CCF3FC  7F E3 FB 78 */	mr r3, r31
/* 80CCF400  48 00 03 09 */	bl srchActors__15daObj_Sekizoa_cFv
/* 80CCF404  38 00 00 12 */	li r0, 0x12
/* 80CCF408  98 1F 05 44 */	stb r0, 0x544(r31)
/* 80CCF40C  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80CCF410  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80CCF414  38 00 00 13 */	li r0, 0x13
/* 80CCF418  98 1F 05 47 */	stb r0, 0x547(r31)
/* 80CCF41C  38 00 00 00 */	li r0, 0
/* 80CCF420  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CCF424  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha
/* 80CCF428  38 63 5C FC */	addi r3, r3, m__21daObj_Sekizoa_Param_c@l
/* 80CCF42C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CCF430  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80CCF434  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80CCF438  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80CCF43C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80CCF440  FC 00 00 1E */	fctiwz f0, f0
/* 80CCF444  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80CCF448  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80CCF44C  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80CCF450  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80CCF454  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80CCF458  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80CCF45C  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80CCF460  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80CCF464  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80CCF468  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80CCF46C  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80CCF470  4B 3A 6A D0 */	b SetWallR__12dBgS_AcchCirFf
/* 80CCF474  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha
/* 80CCF478  38 63 5C FC */	addi r3, r3, m__21daObj_Sekizoa_Param_c@l
/* 80CCF47C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80CCF480  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80CCF484  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CCF488  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80CCF48C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80CCF490  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80CCF494  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80CCF498  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80CCF49C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CCF4A0  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80CCF4A4  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CCF4A8  28 00 00 02 */	cmplwi r0, 2
/* 80CCF4AC  41 82 00 0C */	beq lbl_80CCF4B8
/* 80CCF4B0  28 00 00 03 */	cmplwi r0, 3
/* 80CCF4B4  40 82 00 10 */	bne lbl_80CCF4C4
lbl_80CCF4B8:
/* 80CCF4B8  3C 60 80 CD */	lis r3, lit_4350@ha
/* 80CCF4BC  C0 03 5D BC */	lfs f0, lit_4350@l(r3)
/* 80CCF4C0  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_80CCF4C4:
/* 80CCF4C4  88 1F 11 72 */	lbz r0, 0x1172(r31)
/* 80CCF4C8  28 00 00 00 */	cmplwi r0, 0
/* 80CCF4CC  41 82 01 DC */	beq lbl_80CCF6A8
/* 80CCF4D0  38 60 00 00 */	li r3, 0
/* 80CCF4D4  B0 61 00 08 */	sth r3, 8(r1)
/* 80CCF4D8  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80CCF4DC  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80CCF4E0  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CCF4E4  2C 00 00 02 */	cmpwi r0, 2
/* 80CCF4E8  41 82 00 CC */	beq lbl_80CCF5B4
/* 80CCF4EC  40 80 00 14 */	bge lbl_80CCF500
/* 80CCF4F0  2C 00 00 00 */	cmpwi r0, 0
/* 80CCF4F4  41 82 00 20 */	beq lbl_80CCF514
/* 80CCF4F8  40 80 00 6C */	bge lbl_80CCF564
/* 80CCF4FC  48 00 01 60 */	b lbl_80CCF65C
lbl_80CCF500:
/* 80CCF500  2C 00 00 06 */	cmpwi r0, 6
/* 80CCF504  40 80 01 58 */	bge lbl_80CCF65C
/* 80CCF508  2C 00 00 04 */	cmpwi r0, 4
/* 80CCF50C  40 80 01 48 */	bge lbl_80CCF654
/* 80CCF510  48 00 00 F4 */	b lbl_80CCF604
lbl_80CCF514:
/* 80CCF514  38 60 02 5E */	li r3, 0x25e
/* 80CCF518  4B 47 D5 94 */	b daNpcT_chkEvtBit__FUl
/* 80CCF51C  2C 03 00 00 */	cmpwi r3, 0
/* 80CCF520  41 82 00 24 */	beq lbl_80CCF544
/* 80CCF524  3C 60 80 CD */	lis r3, l_srcPosL@ha
/* 80CCF528  C4 03 69 44 */	lfsu f0, l_srcPosL@l(r3)
/* 80CCF52C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CCF530  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CCF534  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CCF538  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CCF53C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CCF540  48 00 01 24 */	b lbl_80CCF664
lbl_80CCF544:
/* 80CCF544  3C 60 80 CD */	lis r3, l_srcPosR@ha
/* 80CCF548  C4 03 69 2C */	lfsu f0, l_srcPosR@l(r3)
/* 80CCF54C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CCF550  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CCF554  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CCF558  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CCF55C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CCF560  48 00 01 04 */	b lbl_80CCF664
lbl_80CCF564:
/* 80CCF564  38 60 02 5E */	li r3, 0x25e
/* 80CCF568  4B 47 D5 44 */	b daNpcT_chkEvtBit__FUl
/* 80CCF56C  2C 03 00 00 */	cmpwi r3, 0
/* 80CCF570  41 82 00 24 */	beq lbl_80CCF594
/* 80CCF574  3C 60 80 CD */	lis r3, l_srcPosR@ha
/* 80CCF578  C4 03 69 2C */	lfsu f0, l_srcPosR@l(r3)
/* 80CCF57C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CCF580  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CCF584  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CCF588  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CCF58C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CCF590  48 00 00 D4 */	b lbl_80CCF664
lbl_80CCF594:
/* 80CCF594  3C 60 80 CD */	lis r3, l_srcPosL@ha
/* 80CCF598  C4 03 69 44 */	lfsu f0, l_srcPosL@l(r3)
/* 80CCF59C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CCF5A0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CCF5A4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CCF5A8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CCF5AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CCF5B0  48 00 00 B4 */	b lbl_80CCF664
lbl_80CCF5B4:
/* 80CCF5B4  38 60 02 5E */	li r3, 0x25e
/* 80CCF5B8  4B 47 D4 F4 */	b daNpcT_chkEvtBit__FUl
/* 80CCF5BC  2C 03 00 00 */	cmpwi r3, 0
/* 80CCF5C0  41 82 00 24 */	beq lbl_80CCF5E4
/* 80CCF5C4  3C 60 80 CD */	lis r3, l_srcPosL@ha
/* 80CCF5C8  C4 03 69 44 */	lfsu f0, l_srcPosL@l(r3)
/* 80CCF5CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CCF5D0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CCF5D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CCF5D8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CCF5DC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CCF5E0  48 00 00 84 */	b lbl_80CCF664
lbl_80CCF5E4:
/* 80CCF5E4  3C 60 80 CD */	lis r3, l_srcPosR@ha
/* 80CCF5E8  C4 03 69 2C */	lfsu f0, l_srcPosR@l(r3)
/* 80CCF5EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CCF5F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CCF5F4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CCF5F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CCF5FC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CCF600  48 00 00 64 */	b lbl_80CCF664
lbl_80CCF604:
/* 80CCF604  38 60 02 5E */	li r3, 0x25e
/* 80CCF608  4B 47 D4 A4 */	b daNpcT_chkEvtBit__FUl
/* 80CCF60C  2C 03 00 00 */	cmpwi r3, 0
/* 80CCF610  41 82 00 24 */	beq lbl_80CCF634
/* 80CCF614  3C 60 80 CD */	lis r3, l_srcPosR@ha
/* 80CCF618  C4 03 69 2C */	lfsu f0, l_srcPosR@l(r3)
/* 80CCF61C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CCF620  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CCF624  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CCF628  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CCF62C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CCF630  48 00 00 34 */	b lbl_80CCF664
lbl_80CCF634:
/* 80CCF634  3C 60 80 CD */	lis r3, l_srcPosL@ha
/* 80CCF638  C4 03 69 44 */	lfsu f0, l_srcPosL@l(r3)
/* 80CCF63C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CCF640  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CCF644  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CCF648  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CCF64C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CCF650  48 00 00 14 */	b lbl_80CCF664
lbl_80CCF654:
/* 80CCF654  98 7F 11 72 */	stb r3, 0x1172(r31)
/* 80CCF658  48 00 00 0C */	b lbl_80CCF664
lbl_80CCF65C:
/* 80CCF65C  38 00 00 00 */	li r0, 0
/* 80CCF660  98 1F 11 72 */	stb r0, 0x1172(r31)
lbl_80CCF664:
/* 80CCF664  88 1F 11 72 */	lbz r0, 0x1172(r31)
/* 80CCF668  28 00 00 00 */	cmplwi r0, 0
/* 80CCF66C  41 82 00 3C */	beq lbl_80CCF6A8
/* 80CCF670  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CCF674  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CCF678  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CCF67C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CCF680  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CCF684  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CCF688  7F E3 FB 78 */	mr r3, r31
/* 80CCF68C  38 81 00 10 */	addi r4, r1, 0x10
/* 80CCF690  4B 47 B2 78 */	b setPos__8daNpcT_cF4cXyz
/* 80CCF694  7F E3 FB 78 */	mr r3, r31
/* 80CCF698  A8 81 00 0A */	lha r4, 0xa(r1)
/* 80CCF69C  4B 47 B3 7C */	b setAngle__8daNpcT_cFs
/* 80CCF6A0  38 00 00 00 */	li r0, 0
/* 80CCF6A4  98 1F 11 72 */	stb r0, 0x1172(r31)
lbl_80CCF6A8:
/* 80CCF6A8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80CCF6AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CCF6B0  7C 08 03 A6 */	mtlr r0
/* 80CCF6B4  38 21 00 40 */	addi r1, r1, 0x40
/* 80CCF6B8  4E 80 00 20 */	blr 
