lbl_80AAE9D8:
/* 80AAE9D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AAE9DC  7C 08 02 A6 */	mflr r0
/* 80AAE9E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AAE9E4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AAE9E8  4B 8B 37 F4 */	b _savegpr_29
/* 80AAE9EC  7C 7F 1B 78 */	mr r31, r3
/* 80AAE9F0  3C 60 80 AB */	lis r3, m__19daNpc_Pouya_Param_c@ha
/* 80AAE9F4  3B C3 20 00 */	addi r30, r3, m__19daNpc_Pouya_Param_c@l
/* 80AAE9F8  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80AAE9FC  38 1F 0F D0 */	addi r0, r31, 0xfd0
/* 80AAEA00  7F A3 00 50 */	subf r29, r3, r0
/* 80AAEA04  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80AAEA08  28 03 00 00 */	cmplwi r3, 0
/* 80AAEA0C  41 82 00 08 */	beq lbl_80AAEA14
/* 80AAEA10  4B 69 6D 54 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80AAEA14:
/* 80AAEA14  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AAEA18  38 80 00 00 */	li r4, 0
/* 80AAEA1C  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AAEA20  7C A3 00 50 */	subf r5, r3, r0
/* 80AAEA24  4B 55 4A 34 */	b memset
/* 80AAEA28  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AAEA2C  4B 69 6E 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAEA30  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AAEA34  4B 69 6E 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAEA38  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AAEA3C  4B 69 6C 98 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AAEA40  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AAEA44  4B 69 6C 90 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AAEA48  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AAEA4C  4B 69 82 4C */	b initialize__15daNpcT_JntAnm_cFv
/* 80AAEA50  38 60 00 00 */	li r3, 0
/* 80AAEA54  38 80 00 00 */	li r4, 0
/* 80AAEA58  7C 87 23 78 */	mr r7, r4
/* 80AAEA5C  7C 86 23 78 */	mr r6, r4
/* 80AAEA60  7C 85 23 78 */	mr r5, r4
/* 80AAEA64  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80AAEA68  38 00 00 02 */	li r0, 2
/* 80AAEA6C  7C 09 03 A6 */	mtctr r0
lbl_80AAEA70:
/* 80AAEA70  7D 1F 22 14 */	add r8, r31, r4
/* 80AAEA74  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80AAEA78  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80AAEA7C  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80AAEA80  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AAEA84  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AAEA88  38 63 00 04 */	addi r3, r3, 4
/* 80AAEA8C  38 84 00 06 */	addi r4, r4, 6
/* 80AAEA90  42 00 FF E0 */	bdnz lbl_80AAEA70
/* 80AAEA94  38 00 00 00 */	li r0, 0
/* 80AAEA98  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AAEA9C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AAEAA0  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AAEAA4  38 00 FF FF */	li r0, -1
/* 80AAEAA8  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AAEAAC  38 00 00 01 */	li r0, 1
/* 80AAEAB0  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AAEAB4  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80AAEAB8  4B 7B 8E 9C */	b cM_rndF__Ff
/* 80AAEABC  FC 00 08 1E */	fctiwz f0, f1
/* 80AAEAC0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80AAEAC4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80AAEAC8  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AAEACC  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80AAEAD0  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AAEAD4  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AAEAD8  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80AAEADC  38 80 00 00 */	li r4, 0
/* 80AAEAE0  7F A5 EB 78 */	mr r5, r29
/* 80AAEAE4  4B 55 49 74 */	b memset
/* 80AAEAE8  38 00 00 00 */	li r0, 0
/* 80AAEAEC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80AAEAF0  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80AAEAF4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80AAEAF8  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80AAEAFC  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80AAEB00  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80AAEB04  2C 00 00 02 */	cmpwi r0, 2
/* 80AAEB08  41 82 00 54 */	beq lbl_80AAEB5C
/* 80AAEB0C  40 80 00 14 */	bge lbl_80AAEB20
/* 80AAEB10  2C 00 00 00 */	cmpwi r0, 0
/* 80AAEB14  41 82 00 48 */	beq lbl_80AAEB5C
/* 80AAEB18  40 80 00 18 */	bge lbl_80AAEB30
/* 80AAEB1C  48 00 00 40 */	b lbl_80AAEB5C
lbl_80AAEB20:
/* 80AAEB20  2C 00 00 04 */	cmpwi r0, 4
/* 80AAEB24  41 82 00 38 */	beq lbl_80AAEB5C
/* 80AAEB28  40 80 00 34 */	bge lbl_80AAEB5C
/* 80AAEB2C  48 00 00 24 */	b lbl_80AAEB50
lbl_80AAEB30:
/* 80AAEB30  38 60 02 B6 */	li r3, 0x2b6
/* 80AAEB34  4B 69 DF 78 */	b daNpcT_chkEvtBit__FUl
/* 80AAEB38  7C 60 00 34 */	cntlzw r0, r3
/* 80AAEB3C  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80AAEB40  98 1F 0F CF */	stb r0, 0xfcf(r31)
/* 80AAEB44  38 00 00 00 */	li r0, 0
/* 80AAEB48  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80AAEB4C  48 00 00 10 */	b lbl_80AAEB5C
lbl_80AAEB50:
/* 80AAEB50  38 00 00 01 */	li r0, 1
/* 80AAEB54  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80AAEB58  98 1F 0E 25 */	stb r0, 0xe25(r31)
lbl_80AAEB5C:
/* 80AAEB5C  38 00 00 00 */	li r0, 0
/* 80AAEB60  88 7F 0F 84 */	lbz r3, 0xf84(r31)
/* 80AAEB64  28 03 00 02 */	cmplwi r3, 2
/* 80AAEB68  41 82 00 14 */	beq lbl_80AAEB7C
/* 80AAEB6C  28 03 00 03 */	cmplwi r3, 3
/* 80AAEB70  41 82 00 0C */	beq lbl_80AAEB7C
/* 80AAEB74  28 03 00 04 */	cmplwi r3, 4
/* 80AAEB78  40 82 00 08 */	bne lbl_80AAEB80
lbl_80AAEB7C:
/* 80AAEB7C  38 00 00 01 */	li r0, 1
lbl_80AAEB80:
/* 80AAEB80  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AAEB84  41 82 00 14 */	beq lbl_80AAEB98
/* 80AAEB88  38 00 00 07 */	li r0, 7
/* 80AAEB8C  90 1F 0B 5C */	stw r0, 0xb5c(r31)
/* 80AAEB90  38 00 00 08 */	li r0, 8
/* 80AAEB94  90 1F 0B 80 */	stw r0, 0xb80(r31)
lbl_80AAEB98:
/* 80AAEB98  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80AAEB9C  90 01 00 08 */	stw r0, 8(r1)
/* 80AAEBA0  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80AAEBA4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80AAEBA8  7F E3 FB 78 */	mr r3, r31
/* 80AAEBAC  38 81 00 08 */	addi r4, r1, 8
/* 80AAEBB0  4B 69 BD EC */	b setAngle__8daNpcT_cF5csXyz
/* 80AAEBB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AAEBB8  4B 8B 36 70 */	b _restgpr_29
/* 80AAEBBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AAEBC0  7C 08 03 A6 */	mtlr r0
/* 80AAEBC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80AAEBC8  4E 80 00 20 */	blr 
