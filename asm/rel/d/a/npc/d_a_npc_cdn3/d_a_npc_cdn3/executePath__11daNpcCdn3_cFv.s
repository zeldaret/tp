lbl_80979144:
/* 80979144  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80979148  7C 08 02 A6 */	mflr r0
/* 8097914C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80979150  39 61 00 80 */	addi r11, r1, 0x80
/* 80979154  4B 9E 90 84 */	b _savegpr_28
/* 80979158  7C 7F 1B 78 */	mr r31, r3
/* 8097915C  3C 80 80 98 */	lis r4, lit_4037@ha
/* 80979160  3B C4 F5 40 */	addi r30, r4, lit_4037@l
/* 80979164  80 03 0A D8 */	lwz r0, 0xad8(r3)
/* 80979168  28 00 00 00 */	cmplwi r0, 0
/* 8097916C  41 82 08 2C */	beq lbl_80979998
/* 80979170  88 1F 0B 98 */	lbz r0, 0xb98(r31)
/* 80979174  2C 00 00 01 */	cmpwi r0, 1
/* 80979178  41 82 03 94 */	beq lbl_8097950C
/* 8097917C  40 80 05 B0 */	bge lbl_8097972C
/* 80979180  2C 00 00 00 */	cmpwi r0, 0
/* 80979184  40 80 00 08 */	bge lbl_8097918C
/* 80979188  48 00 05 A4 */	b lbl_8097972C
lbl_8097918C:
/* 8097918C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80979190  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80979194  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80979198  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8097919C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809791A0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809791A4  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 809791A8  38 81 00 3C */	addi r4, r1, 0x3c
/* 809791AC  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 809791B0  4B 7E 0A 64 */	b checkPoint__11PathTrace_cF4cXyzf
/* 809791B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809791B8  41 82 05 74 */	beq lbl_8097972C
/* 809791BC  38 00 FF FF */	li r0, -1
/* 809791C0  90 1F 0B 74 */	stw r0, 0xb74(r31)
/* 809791C4  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 809791C8  80 63 00 08 */	lwz r3, 8(r3)
/* 809791CC  80 1F 0A F0 */	lwz r0, 0xaf0(r31)
/* 809791D0  54 00 20 36 */	slwi r0, r0, 4
/* 809791D4  7C 63 02 14 */	add r3, r3, r0
/* 809791D8  88 03 00 03 */	lbz r0, 3(r3)
/* 809791DC  7C 1C 07 74 */	extsb r28, r0
/* 809791E0  2C 1C FF FF */	cmpwi r28, -1
/* 809791E4  41 82 00 50 */	beq lbl_80979234
/* 809791E8  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 809791EC  28 00 00 00 */	cmplwi r0, 0
/* 809791F0  41 82 00 10 */	beq lbl_80979200
/* 809791F4  4B 82 69 3C */	b dKy_getDarktime_minute__Fv
/* 809791F8  7C 7D 1B 78 */	mr r29, r3
/* 809791FC  48 00 00 0C */	b lbl_80979208
lbl_80979200:
/* 80979200  4B 82 68 3C */	b dKy_getdaytime_minute__Fv
/* 80979204  7C 7D 1B 78 */	mr r29, r3
lbl_80979208:
/* 80979208  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 8097920C  28 00 00 00 */	cmplwi r0, 0
/* 80979210  41 82 00 0C */	beq lbl_8097921C
/* 80979214  4B 82 68 E0 */	b dKy_getDarktime_hour__Fv
/* 80979218  48 00 00 08 */	b lbl_80979220
lbl_8097921C:
/* 8097921C  4B 82 67 F4 */	b dKy_getdaytime_hour__Fv
lbl_80979220:
/* 80979220  1C 63 00 3C */	mulli r3, r3, 0x3c
/* 80979224  1C 1C 00 0A */	mulli r0, r28, 0xa
/* 80979228  7C 03 02 14 */	add r0, r3, r0
/* 8097922C  7C 1D 02 14 */	add r0, r29, r0
/* 80979230  90 1F 0B 74 */	stw r0, 0xb74(r31)
lbl_80979234:
/* 80979234  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 80979238  80 63 00 08 */	lwz r3, 8(r3)
/* 8097923C  80 1F 0A F0 */	lwz r0, 0xaf0(r31)
/* 80979240  54 00 20 36 */	slwi r0, r0, 4
/* 80979244  7C 03 00 AE */	lbzx r0, r3, r0
/* 80979248  7C 00 07 74 */	extsb r0, r0
/* 8097924C  90 1F 0B 78 */	stw r0, 0xb78(r31)
/* 80979250  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80979254  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80979258  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8097925C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80979260  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80979264  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80979268  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 8097926C  38 81 00 30 */	addi r4, r1, 0x30
/* 80979270  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80979274  4B 7E 0B 4C */	b checkPathEnd__11PathTrace_cF4cXyzf
/* 80979278  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8097927C  41 82 02 0C */	beq lbl_80979488
/* 80979280  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80979284  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80979288  2C 00 00 FF */	cmpwi r0, 0xff
/* 8097928C  41 82 00 9C */	beq lbl_80979328
/* 80979290  80 7F 0B 84 */	lwz r3, 0xb84(r31)
/* 80979294  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80979298  54 00 66 3E */	rlwinm r0, r0, 0xc, 0x18, 0x1f
/* 8097929C  2C 00 00 01 */	cmpwi r0, 1
/* 809792A0  40 82 00 24 */	bne lbl_809792C4
/* 809792A4  7F E3 FB 78 */	mr r3, r31
/* 809792A8  80 9F 0B 88 */	lwz r4, 0xb88(r31)
/* 809792AC  48 00 20 E1 */	bl setSchedule__11daNpcCdn3_cFP15daTagSchedule_c
/* 809792B0  38 00 00 00 */	li r0, 0
/* 809792B4  90 1F 0B 88 */	stw r0, 0xb88(r31)
/* 809792B8  38 00 00 01 */	li r0, 1
/* 809792BC  98 1F 0B 95 */	stb r0, 0xb95(r31)
/* 809792C0  48 00 00 5C */	b lbl_8097931C
lbl_809792C4:
/* 809792C4  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 809792C8  88 03 00 05 */	lbz r0, 5(r3)
/* 809792CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809792D0  41 82 00 14 */	beq lbl_809792E4
/* 809792D4  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 809792D8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809792DC  4B 7E 0C BC */	b setNextPoint__11PathTrace_cFR4cXyz
/* 809792E0  48 00 00 3C */	b lbl_8097931C
lbl_809792E4:
/* 809792E4  80 9F 0B 78 */	lwz r4, 0xb78(r31)
/* 809792E8  2C 04 00 00 */	cmpwi r4, 0
/* 809792EC  41 80 00 0C */	blt lbl_809792F8
/* 809792F0  2C 04 00 2C */	cmpwi r4, 0x2c
/* 809792F4  41 80 00 14 */	blt lbl_80979308
lbl_809792F8:
/* 809792F8  3C 60 80 98 */	lis r3, stringBase0@ha
/* 809792FC  38 63 F5 AC */	addi r3, r3, stringBase0@l
/* 80979300  4C C6 31 82 */	crclr 6
/* 80979304  4B 68 D9 08 */	b OSReport_Error
lbl_80979308:
/* 80979308  38 00 00 00 */	li r0, 0
/* 8097930C  90 1F 0B 68 */	stw r0, 0xb68(r31)
/* 80979310  7F E3 FB 78 */	mr r3, r31
/* 80979314  38 80 00 00 */	li r4, 0
/* 80979318  4B FF FA BD */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
lbl_8097931C:
/* 8097931C  7F E3 FB 78 */	mr r3, r31
/* 80979320  48 00 1F 69 */	bl checkSchedule__11daNpcCdn3_cFv
/* 80979324  48 00 04 08 */	b lbl_8097972C
lbl_80979328:
/* 80979328  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 8097932C  88 03 00 05 */	lbz r0, 5(r3)
/* 80979330  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80979334  40 82 03 F8 */	bne lbl_8097972C
/* 80979338  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 8097933C  28 00 00 00 */	cmplwi r0, 0
/* 80979340  41 82 00 10 */	beq lbl_80979350
/* 80979344  4B 82 67 EC */	b dKy_getDarktime_minute__Fv
/* 80979348  7C 7D 1B 78 */	mr r29, r3
/* 8097934C  48 00 00 0C */	b lbl_80979358
lbl_80979350:
/* 80979350  4B 82 66 EC */	b dKy_getdaytime_minute__Fv
/* 80979354  7C 7D 1B 78 */	mr r29, r3
lbl_80979358:
/* 80979358  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 8097935C  28 00 00 00 */	cmplwi r0, 0
/* 80979360  41 82 00 0C */	beq lbl_8097936C
/* 80979364  4B 82 67 90 */	b dKy_getDarktime_hour__Fv
/* 80979368  48 00 00 08 */	b lbl_80979370
lbl_8097936C:
/* 8097936C  4B 82 66 A4 */	b dKy_getdaytime_hour__Fv
lbl_80979370:
/* 80979370  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 80979374  7C 7D 02 14 */	add r3, r29, r0
/* 80979378  A0 1F 0B 90 */	lhz r0, 0xb90(r31)
/* 8097937C  7C 03 02 14 */	add r0, r3, r0
/* 80979380  B0 1F 0B 8C */	sth r0, 0xb8c(r31)
/* 80979384  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 80979388  80 83 00 08 */	lwz r4, 8(r3)
/* 8097938C  80 64 00 04 */	lwz r3, 4(r4)
/* 80979390  80 04 00 08 */	lwz r0, 8(r4)
/* 80979394  90 61 00 24 */	stw r3, 0x24(r1)
/* 80979398  90 01 00 28 */	stw r0, 0x28(r1)
/* 8097939C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809793A0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809793A4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809793A8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 809793AC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 809793B0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 809793B4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809793B8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 809793BC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809793C0  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 809793C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809793C8  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 809793CC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809793D0  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 809793D4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809793D8  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 809793DC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809793E0  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 809793E4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809793E8  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 809793EC  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 809793F0  80 83 00 08 */	lwz r4, 8(r3)
/* 809793F4  80 64 00 14 */	lwz r3, 0x14(r4)
/* 809793F8  80 04 00 18 */	lwz r0, 0x18(r4)
/* 809793FC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80979400  90 01 00 10 */	stw r0, 0x10(r1)
/* 80979404  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80979408  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097940C  80 64 00 04 */	lwz r3, 4(r4)
/* 80979410  80 04 00 08 */	lwz r0, 8(r4)
/* 80979414  90 61 00 18 */	stw r3, 0x18(r1)
/* 80979418  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8097941C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80979420  90 01 00 20 */	stw r0, 0x20(r1)
/* 80979424  38 61 00 18 */	addi r3, r1, 0x18
/* 80979428  38 81 00 0C */	addi r4, r1, 0xc
/* 8097942C  4B 8F 78 10 */	b cLib_targetAngleY__FRC3VecRC3Vec
/* 80979430  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80979434  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80979438  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8097943C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80979440  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 80979444  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80979448  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 8097944C  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 80979450  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80979454  54 04 46 3E */	srwi r4, r0, 0x18
/* 80979458  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8097945C  7C 05 07 74 */	extsb r5, r0
/* 80979460  38 C0 00 01 */	li r6, 1
/* 80979464  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80979468  39 00 00 00 */	li r8, 0
/* 8097946C  4B 7E 05 CC */	b setPath__11PathTrace_cFiiiP4cXyzb
/* 80979470  7F E3 FB 78 */	mr r3, r31
/* 80979474  38 80 00 01 */	li r4, 1
/* 80979478  4B FF F9 5D */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
/* 8097947C  38 00 00 01 */	li r0, 1
/* 80979480  98 1F 0B 95 */	stb r0, 0xb95(r31)
/* 80979484  48 00 02 A8 */	b lbl_8097972C
lbl_80979488:
/* 80979488  80 1F 0B 78 */	lwz r0, 0xb78(r31)
/* 8097948C  2C 00 00 00 */	cmpwi r0, 0
/* 80979490  41 80 00 20 */	blt lbl_809794B0
/* 80979494  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80979498  40 80 00 18 */	bge lbl_809794B0
/* 8097949C  38 00 00 00 */	li r0, 0
/* 809794A0  90 1F 0B 68 */	stw r0, 0xb68(r31)
/* 809794A4  38 00 00 01 */	li r0, 1
/* 809794A8  98 1F 0B 98 */	stb r0, 0xb98(r31)
/* 809794AC  48 00 02 80 */	b lbl_8097972C
lbl_809794B0:
/* 809794B0  80 7F 0B 84 */	lwz r3, 0xb84(r31)
/* 809794B4  28 03 00 00 */	cmplwi r3, 0
/* 809794B8  41 82 00 44 */	beq lbl_809794FC
/* 809794BC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 809794C0  54 00 D6 BE */	rlwinm r0, r0, 0x1a, 0x1a, 0x1f
/* 809794C4  90 1F 0B 78 */	stw r0, 0xb78(r31)
/* 809794C8  80 1F 0B 78 */	lwz r0, 0xb78(r31)
/* 809794CC  2C 00 00 00 */	cmpwi r0, 0
/* 809794D0  41 80 00 2C */	blt lbl_809794FC
/* 809794D4  2C 00 00 2C */	cmpwi r0, 0x2c
/* 809794D8  40 80 00 24 */	bge lbl_809794FC
/* 809794DC  7F E3 FB 78 */	mr r3, r31
/* 809794E0  38 80 00 00 */	li r4, 0
/* 809794E4  54 00 10 3A */	slwi r0, r0, 2
/* 809794E8  3C A0 80 98 */	lis r5, m_funcTbl__11daNpcCdn3_c@ha
/* 809794EC  38 A5 F8 48 */	addi r5, r5, m_funcTbl__11daNpcCdn3_c@l
/* 809794F0  7D 85 00 2E */	lwzx r12, r5, r0
/* 809794F4  4B 9E 8B 90 */	b __ptmf_scall
/* 809794F8  60 00 00 00 */	nop 
lbl_809794FC:
/* 809794FC  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 80979500  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80979504  4B 7E 0A 94 */	b setNextPoint__11PathTrace_cFR4cXyz
/* 80979508  48 00 02 24 */	b lbl_8097972C
lbl_8097950C:
/* 8097950C  80 1F 0B 74 */	lwz r0, 0xb74(r31)
/* 80979510  2C 00 FF FF */	cmpwi r0, -1
/* 80979514  41 82 01 3C */	beq lbl_80979650
/* 80979518  38 80 00 00 */	li r4, 0
/* 8097951C  80 1F 0B 78 */	lwz r0, 0xb78(r31)
/* 80979520  54 00 10 3A */	slwi r0, r0, 2
/* 80979524  3C A0 80 98 */	lis r5, m_funcTbl__11daNpcCdn3_c@ha
/* 80979528  38 A5 F8 48 */	addi r5, r5, m_funcTbl__11daNpcCdn3_c@l
/* 8097952C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80979530  88 1F 0B 97 */	lbz r0, 0xb97(r31)
/* 80979534  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80979538  7D 85 02 14 */	add r12, r5, r0
/* 8097953C  4B 9E 8B 48 */	b __ptmf_scall
/* 80979540  60 00 00 00 */	nop 
/* 80979544  2C 03 00 00 */	cmpwi r3, 0
/* 80979548  41 82 00 50 */	beq lbl_80979598
/* 8097954C  80 1F 0B 78 */	lwz r0, 0xb78(r31)
/* 80979550  54 00 10 3A */	slwi r0, r0, 2
/* 80979554  3C 60 80 98 */	lis r3, m_funcTbl__11daNpcCdn3_c@ha
/* 80979558  38 63 F8 48 */	addi r3, r3, m_funcTbl__11daNpcCdn3_c@l
/* 8097955C  7C 83 00 2E */	lwzx r4, r3, r0
/* 80979560  88 7F 0B 97 */	lbz r3, 0xb97(r31)
/* 80979564  38 03 00 01 */	addi r0, r3, 1
/* 80979568  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8097956C  7C 64 02 14 */	add r3, r4, r0
/* 80979570  4B 9E 8A A8 */	b __ptmf_test
/* 80979574  2C 03 00 00 */	cmpwi r3, 0
/* 80979578  40 82 00 0C */	bne lbl_80979584
/* 8097957C  38 00 00 00 */	li r0, 0
/* 80979580  48 00 00 0C */	b lbl_8097958C
lbl_80979584:
/* 80979584  88 7F 0B 97 */	lbz r3, 0xb97(r31)
/* 80979588  38 03 00 01 */	addi r0, r3, 1
lbl_8097958C:
/* 8097958C  98 1F 0B 97 */	stb r0, 0xb97(r31)
/* 80979590  38 00 00 01 */	li r0, 1
/* 80979594  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_80979598:
/* 80979598  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 8097959C  28 00 00 00 */	cmplwi r0, 0
/* 809795A0  41 82 00 10 */	beq lbl_809795B0
/* 809795A4  4B 82 65 8C */	b dKy_getDarktime_minute__Fv
/* 809795A8  7C 7D 1B 78 */	mr r29, r3
/* 809795AC  48 00 00 0C */	b lbl_809795B8
lbl_809795B0:
/* 809795B0  4B 82 64 8C */	b dKy_getdaytime_minute__Fv
/* 809795B4  7C 7D 1B 78 */	mr r29, r3
lbl_809795B8:
/* 809795B8  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 809795BC  28 00 00 00 */	cmplwi r0, 0
/* 809795C0  41 82 00 0C */	beq lbl_809795CC
/* 809795C4  4B 82 65 30 */	b dKy_getDarktime_hour__Fv
/* 809795C8  48 00 00 08 */	b lbl_809795D0
lbl_809795CC:
/* 809795CC  4B 82 64 44 */	b dKy_getdaytime_hour__Fv
lbl_809795D0:
/* 809795D0  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 809795D4  7C 7D 02 14 */	add r3, r29, r0
/* 809795D8  80 1F 0B 74 */	lwz r0, 0xb74(r31)
/* 809795DC  7C 00 18 00 */	cmpw r0, r3
/* 809795E0  41 81 01 4C */	bgt lbl_8097972C
/* 809795E4  80 1F 0B 68 */	lwz r0, 0xb68(r31)
/* 809795E8  28 00 00 00 */	cmplwi r0, 0
/* 809795EC  40 82 00 3C */	bne lbl_80979628
/* 809795F0  7F E3 FB 78 */	mr r3, r31
/* 809795F4  38 80 00 02 */	li r4, 2
/* 809795F8  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 809795FC  4B 7D EA F4 */	b getAnmP__10daNpcCd2_cFii
/* 80979600  7C 64 1B 78 */	mr r4, r3
/* 80979604  7F E3 FB 78 */	mr r3, r31
/* 80979608  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8097960C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80979610  38 A0 00 02 */	li r5, 2
/* 80979614  38 C0 00 00 */	li r6, 0
/* 80979618  38 E0 FF FF */	li r7, -1
/* 8097961C  4B 7D F8 E4 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80979620  38 00 00 02 */	li r0, 2
/* 80979624  90 1F 0B 68 */	stw r0, 0xb68(r31)
lbl_80979628:
/* 80979628  38 00 00 00 */	li r0, 0
/* 8097962C  98 1F 0B 97 */	stb r0, 0xb97(r31)
/* 80979630  38 00 00 01 */	li r0, 1
/* 80979634  98 1F 0B 94 */	stb r0, 0xb94(r31)
/* 80979638  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 8097963C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80979640  4B 7E 09 58 */	b setNextPoint__11PathTrace_cFR4cXyz
/* 80979644  38 00 00 00 */	li r0, 0
/* 80979648  98 1F 0B 98 */	stb r0, 0xb98(r31)
/* 8097964C  48 00 00 E0 */	b lbl_8097972C
lbl_80979650:
/* 80979650  38 80 00 00 */	li r4, 0
/* 80979654  80 1F 0B 78 */	lwz r0, 0xb78(r31)
/* 80979658  54 00 10 3A */	slwi r0, r0, 2
/* 8097965C  3C A0 80 98 */	lis r5, m_funcTbl__11daNpcCdn3_c@ha
/* 80979660  38 A5 F8 48 */	addi r5, r5, m_funcTbl__11daNpcCdn3_c@l
/* 80979664  7C A5 00 2E */	lwzx r5, r5, r0
/* 80979668  88 1F 0B 97 */	lbz r0, 0xb97(r31)
/* 8097966C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80979670  7D 85 02 14 */	add r12, r5, r0
/* 80979674  4B 9E 8A 10 */	b __ptmf_scall
/* 80979678  60 00 00 00 */	nop 
/* 8097967C  2C 03 00 00 */	cmpwi r3, 0
/* 80979680  41 82 00 AC */	beq lbl_8097972C
/* 80979684  80 1F 0B 78 */	lwz r0, 0xb78(r31)
/* 80979688  54 00 10 3A */	slwi r0, r0, 2
/* 8097968C  3C 60 80 98 */	lis r3, m_funcTbl__11daNpcCdn3_c@ha
/* 80979690  38 63 F8 48 */	addi r3, r3, m_funcTbl__11daNpcCdn3_c@l
/* 80979694  7C 83 00 2E */	lwzx r4, r3, r0
/* 80979698  88 7F 0B 97 */	lbz r3, 0xb97(r31)
/* 8097969C  38 03 00 01 */	addi r0, r3, 1
/* 809796A0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 809796A4  7C 64 02 14 */	add r3, r4, r0
/* 809796A8  4B 9E 89 70 */	b __ptmf_test
/* 809796AC  2C 03 00 00 */	cmpwi r3, 0
/* 809796B0  40 82 00 68 */	bne lbl_80979718
/* 809796B4  80 1F 0B 68 */	lwz r0, 0xb68(r31)
/* 809796B8  28 00 00 00 */	cmplwi r0, 0
/* 809796BC  40 82 00 3C */	bne lbl_809796F8
/* 809796C0  7F E3 FB 78 */	mr r3, r31
/* 809796C4  38 80 00 02 */	li r4, 2
/* 809796C8  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 809796CC  4B 7D EA 24 */	b getAnmP__10daNpcCd2_cFii
/* 809796D0  7C 64 1B 78 */	mr r4, r3
/* 809796D4  7F E3 FB 78 */	mr r3, r31
/* 809796D8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 809796DC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 809796E0  38 A0 00 02 */	li r5, 2
/* 809796E4  38 C0 00 00 */	li r6, 0
/* 809796E8  38 E0 FF FF */	li r7, -1
/* 809796EC  4B 7D F8 14 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 809796F0  38 00 00 02 */	li r0, 2
/* 809796F4  90 1F 0B 68 */	stw r0, 0xb68(r31)
lbl_809796F8:
/* 809796F8  38 00 00 00 */	li r0, 0
/* 809796FC  98 1F 0B 97 */	stb r0, 0xb97(r31)
/* 80979700  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 80979704  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80979708  4B 7E 08 90 */	b setNextPoint__11PathTrace_cFR4cXyz
/* 8097970C  38 00 00 00 */	li r0, 0
/* 80979710  98 1F 0B 98 */	stb r0, 0xb98(r31)
/* 80979714  48 00 00 10 */	b lbl_80979724
lbl_80979718:
/* 80979718  88 7F 0B 97 */	lbz r3, 0xb97(r31)
/* 8097971C  38 03 00 01 */	addi r0, r3, 1
/* 80979720  98 1F 0B 97 */	stb r0, 0xb97(r31)
lbl_80979724:
/* 80979724  38 00 00 01 */	li r0, 1
/* 80979728  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097972C:
/* 8097972C  80 1F 0B 68 */	lwz r0, 0xb68(r31)
/* 80979730  28 00 00 02 */	cmplwi r0, 2
/* 80979734  41 82 00 0C */	beq lbl_80979740
/* 80979738  28 00 00 01 */	cmplwi r0, 1
/* 8097973C  40 82 01 EC */	bne lbl_80979928
lbl_80979740:
/* 80979740  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80979744  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80979748  40 82 00 10 */	bne lbl_80979758
/* 8097974C  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 80979750  7F E4 FB 78 */	mr r4, r31
/* 80979754  4B 7E 0C 1C */	b checkObstacle__11PathTrace_cFP10fopAc_ac_c
lbl_80979758:
/* 80979758  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 8097975C  38 81 00 48 */	addi r4, r1, 0x48
/* 80979760  4B 7E 06 F4 */	b getTargetPoint__11PathTrace_cFP3Vec
/* 80979764  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80979768  38 81 00 48 */	addi r4, r1, 0x48
/* 8097976C  4B 8F 74 98 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80979770  7C 64 1B 78 */	mr r4, r3
/* 80979774  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80979778  38 A0 00 0D */	li r5, 0xd
/* 8097977C  38 C0 06 00 */	li r6, 0x600
/* 80979780  4B 8F 6E 88 */	b cLib_addCalcAngleS2__FPssss
/* 80979784  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80979788  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 8097978C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80979790  41 82 00 60 */	beq lbl_809797F0
/* 80979794  3B 80 00 00 */	li r28, 0
/* 80979798  3C 60 80 98 */	lis r3, __vt__8cM3dGPla@ha
/* 8097979C  38 03 07 38 */	addi r0, r3, __vt__8cM3dGPla@l
/* 809797A0  90 01 00 64 */	stw r0, 0x64(r1)
/* 809797A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809797A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809797AC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 809797B0  38 9F 07 28 */	addi r4, r31, 0x728
/* 809797B4  38 A1 00 54 */	addi r5, r1, 0x54
/* 809797B8  4B 6F AF 8C */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 809797BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809797C0  41 82 00 14 */	beq lbl_809797D4
/* 809797C4  38 61 00 54 */	addi r3, r1, 0x54
/* 809797C8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 809797CC  4B 6A 44 0C */	b fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 809797D0  7C 7C 1B 78 */	mr r28, r3
lbl_809797D4:
/* 809797D4  7F 80 07 35 */	extsh. r0, r28
/* 809797D8  41 82 00 0C */	beq lbl_809797E4
/* 809797DC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809797E0  D0 1F 0B 64 */	stfs f0, 0xb64(r31)
lbl_809797E4:
/* 809797E4  3C 60 80 98 */	lis r3, __vt__8cM3dGPla@ha
/* 809797E8  38 03 07 38 */	addi r0, r3, __vt__8cM3dGPla@l
/* 809797EC  90 01 00 64 */	stw r0, 0x64(r1)
lbl_809797F0:
/* 809797F0  80 1F 06 64 */	lwz r0, 0x664(r31)
/* 809797F4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 809797F8  41 82 01 28 */	beq lbl_80979920
/* 809797FC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80979800  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 80979804  4B 9C DB 98 */	b PSVECSquareDistance
/* 80979808  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8097980C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80979810  40 81 00 58 */	ble lbl_80979868
/* 80979814  FC 00 08 34 */	frsqrte f0, f1
/* 80979818  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8097981C  FC 44 00 32 */	fmul f2, f4, f0
/* 80979820  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80979824  FC 00 00 32 */	fmul f0, f0, f0
/* 80979828  FC 01 00 32 */	fmul f0, f1, f0
/* 8097982C  FC 03 00 28 */	fsub f0, f3, f0
/* 80979830  FC 02 00 32 */	fmul f0, f2, f0
/* 80979834  FC 44 00 32 */	fmul f2, f4, f0
/* 80979838  FC 00 00 32 */	fmul f0, f0, f0
/* 8097983C  FC 01 00 32 */	fmul f0, f1, f0
/* 80979840  FC 03 00 28 */	fsub f0, f3, f0
/* 80979844  FC 02 00 32 */	fmul f0, f2, f0
/* 80979848  FC 44 00 32 */	fmul f2, f4, f0
/* 8097984C  FC 00 00 32 */	fmul f0, f0, f0
/* 80979850  FC 01 00 32 */	fmul f0, f1, f0
/* 80979854  FC 03 00 28 */	fsub f0, f3, f0
/* 80979858  FC 02 00 32 */	fmul f0, f2, f0
/* 8097985C  FC 21 00 32 */	fmul f1, f1, f0
/* 80979860  FC 20 08 18 */	frsp f1, f1
/* 80979864  48 00 00 88 */	b lbl_809798EC
lbl_80979868:
/* 80979868  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8097986C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80979870  40 80 00 10 */	bge lbl_80979880
/* 80979874  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80979878  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8097987C  48 00 00 70 */	b lbl_809798EC
lbl_80979880:
/* 80979880  D0 21 00 08 */	stfs f1, 8(r1)
/* 80979884  80 81 00 08 */	lwz r4, 8(r1)
/* 80979888  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8097988C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80979890  7C 03 00 00 */	cmpw r3, r0
/* 80979894  41 82 00 14 */	beq lbl_809798A8
/* 80979898  40 80 00 40 */	bge lbl_809798D8
/* 8097989C  2C 03 00 00 */	cmpwi r3, 0
/* 809798A0  41 82 00 20 */	beq lbl_809798C0
/* 809798A4  48 00 00 34 */	b lbl_809798D8
lbl_809798A8:
/* 809798A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809798AC  41 82 00 0C */	beq lbl_809798B8
/* 809798B0  38 00 00 01 */	li r0, 1
/* 809798B4  48 00 00 28 */	b lbl_809798DC
lbl_809798B8:
/* 809798B8  38 00 00 02 */	li r0, 2
/* 809798BC  48 00 00 20 */	b lbl_809798DC
lbl_809798C0:
/* 809798C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809798C4  41 82 00 0C */	beq lbl_809798D0
/* 809798C8  38 00 00 05 */	li r0, 5
/* 809798CC  48 00 00 10 */	b lbl_809798DC
lbl_809798D0:
/* 809798D0  38 00 00 03 */	li r0, 3
/* 809798D4  48 00 00 08 */	b lbl_809798DC
lbl_809798D8:
/* 809798D8  38 00 00 04 */	li r0, 4
lbl_809798DC:
/* 809798DC  2C 00 00 01 */	cmpwi r0, 1
/* 809798E0  40 82 00 0C */	bne lbl_809798EC
/* 809798E4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809798E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_809798EC:
/* 809798EC  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 809798F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809798F4  40 80 00 2C */	bge lbl_80979920
/* 809798F8  88 7F 0B 99 */	lbz r3, 0xb99(r31)
/* 809798FC  38 03 00 01 */	addi r0, r3, 1
/* 80979900  98 1F 0B 99 */	stb r0, 0xb99(r31)
/* 80979904  88 1F 0B 99 */	lbz r0, 0xb99(r31)
/* 80979908  28 00 00 1E */	cmplwi r0, 0x1e
/* 8097990C  40 81 00 1C */	ble lbl_80979928
/* 80979910  7F E3 FB 78 */	mr r3, r31
/* 80979914  38 80 00 07 */	li r4, 7
/* 80979918  4B FF F4 BD */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
/* 8097991C  48 00 00 0C */	b lbl_80979928
lbl_80979920:
/* 80979920  38 00 00 00 */	li r0, 0
/* 80979924  98 1F 0B 99 */	stb r0, 0xb99(r31)
lbl_80979928:
/* 80979928  7F E3 FB 78 */	mr r3, r31
/* 8097992C  48 00 12 B1 */	bl setAngle__11daNpcCdn3_cFv
/* 80979930  7F E3 FB 78 */	mr r3, r31
/* 80979934  48 00 12 B5 */	bl pathMoveF__11daNpcCdn3_cFv
/* 80979938  38 7F 06 38 */	addi r3, r31, 0x638
/* 8097993C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80979940  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80979944  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80979948  4B 6F D1 64 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8097994C  7F E3 FB 78 */	mr r3, r31
/* 80979950  4B 7D FE C8 */	b checkFearSituation__10daNpcCd2_cFv
/* 80979954  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80979958  41 82 00 40 */	beq lbl_80979998
/* 8097995C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80979960  2C 00 00 02 */	cmpwi r0, 2
/* 80979964  40 82 00 28 */	bne lbl_8097998C
/* 80979968  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 8097996C  2C 00 00 00 */	cmpwi r0, 0
/* 80979970  41 82 00 0C */	beq lbl_8097997C
/* 80979974  2C 00 00 01 */	cmpwi r0, 1
/* 80979978  40 82 00 14 */	bne lbl_8097998C
lbl_8097997C:
/* 8097997C  7F E3 FB 78 */	mr r3, r31
/* 80979980  38 80 00 06 */	li r4, 6
/* 80979984  4B FF F4 51 */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
/* 80979988  48 00 00 10 */	b lbl_80979998
lbl_8097998C:
/* 8097998C  7F E3 FB 78 */	mr r3, r31
/* 80979990  38 80 00 04 */	li r4, 4
/* 80979994  4B FF F4 41 */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
lbl_80979998:
/* 80979998  39 61 00 80 */	addi r11, r1, 0x80
/* 8097999C  4B 9E 88 88 */	b _restgpr_28
/* 809799A0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 809799A4  7C 08 03 A6 */	mtlr r0
/* 809799A8  38 21 00 80 */	addi r1, r1, 0x80
/* 809799AC  4E 80 00 20 */	blr 
