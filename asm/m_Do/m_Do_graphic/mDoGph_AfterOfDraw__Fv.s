lbl_80008474:
/* 80008474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008478  7C 08 02 A6 */	mflr r0
/* 8000847C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008480  3C 60 80 3F */	lis r3, g_HIO@ha
/* 80008484  38 A3 1B BC */	addi r5, r3, g_HIO@l
/* 80008488  88 C5 00 16 */	lbz r6, 0x16(r5)
/* 8000848C  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 80008490  41 82 00 28 */	beq lbl_800084B8
/* 80008494  38 00 00 00 */	li r0, 0
/* 80008498  80 6D 8F D8 */	lwz r3, sManager__10JUTProcBar(r13)
/* 8000849C  98 03 01 0C */	stb r0, 0x10c(r3)
/* 800084A0  80 6D 8F D8 */	lwz r3, sManager__10JUTProcBar(r13)
/* 800084A4  98 03 01 30 */	stb r0, 0x130(r3)
/* 800084A8  38 00 00 01 */	li r0, 1
/* 800084AC  80 6D 8F 48 */	lwz r3, sDebugPrint__10JUTDbPrint(r13)
/* 800084B0  98 03 00 0C */	stb r0, 0xc(r3)
/* 800084B4  48 00 00 A0 */	b lbl_80008554
lbl_800084B8:
/* 800084B8  80 6D 8C 38 */	lwz r3, systemConsole__9JFWSystem(r13)
/* 800084BC  88 83 00 68 */	lbz r4, 0x68(r3)
/* 800084C0  3C 60 80 43 */	lis r3, mPadStatus__10JUTGamePad@ha
/* 800084C4  38 63 43 F0 */	addi r3, r3, mPadStatus__10JUTGamePad@l
/* 800084C8  88 03 00 22 */	lbz r0, 0x22(r3)
/* 800084CC  7C 00 07 74 */	extsb r0, r0
/* 800084D0  7C 00 00 34 */	cntlzw r0, r0
/* 800084D4  54 07 DE 3F */	rlwinm. r7, r0, 0x1b, 0x18, 0x1f
/* 800084D8  38 60 00 00 */	li r3, 0
/* 800084DC  41 82 00 1C */	beq lbl_800084F8
/* 800084E0  88 05 00 15 */	lbz r0, 0x15(r5)
/* 800084E4  28 00 00 00 */	cmplwi r0, 0
/* 800084E8  41 82 00 10 */	beq lbl_800084F8
/* 800084EC  2C 04 00 00 */	cmpwi r4, 0
/* 800084F0  40 82 00 08 */	bne lbl_800084F8
/* 800084F4  38 60 00 01 */	li r3, 1
lbl_800084F8:
/* 800084F8  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 800084FC  38 60 00 00 */	li r3, 0
/* 80008500  2C 07 00 00 */	cmpwi r7, 0
/* 80008504  41 82 00 10 */	beq lbl_80008514
/* 80008508  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 8000850C  41 82 00 08 */	beq lbl_80008514
/* 80008510  38 60 00 01 */	li r3, 1
lbl_80008514:
/* 80008514  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80008518  88 0D 80 00 */	lbz r0, data_80450580(r13)
/* 8000851C  7C 00 07 75 */	extsb. r0, r0
/* 80008520  40 82 00 0C */	bne lbl_8000852C
/* 80008524  38 80 00 00 */	li r4, 0
/* 80008528  38 A0 00 00 */	li r5, 0
lbl_8000852C:
/* 8000852C  30 04 FF FF */	addic r0, r4, -1
/* 80008530  7C 00 21 10 */	subfe r0, r0, r4
/* 80008534  80 6D 8F D8 */	lwz r3, sManager__10JUTProcBar(r13)
/* 80008538  98 03 01 0C */	stb r0, 0x10c(r3)
/* 8000853C  80 6D 8F D8 */	lwz r3, sManager__10JUTProcBar(r13)
/* 80008540  98 03 01 30 */	stb r0, 0x130(r3)
/* 80008544  30 05 FF FF */	addic r0, r5, -1
/* 80008548  7C 00 29 10 */	subfe r0, r0, r5
/* 8000854C  80 6D 8F 48 */	lwz r3, sDebugPrint__10JUTDbPrint(r13)
/* 80008550  98 03 00 0C */	stb r0, 0xc(r3)
lbl_80008554:
/* 80008554  38 60 00 01 */	li r3, 1
/* 80008558  48 35 77 79 */	bl GXSetZCompLoc
/* 8000855C  38 60 00 00 */	li r3, 0
/* 80008560  38 80 00 07 */	li r4, 7
/* 80008564  38 A0 00 00 */	li r5, 0
/* 80008568  48 35 77 35 */	bl GXSetZMode
/* 8000856C  38 60 00 01 */	li r3, 1
/* 80008570  38 80 00 04 */	li r4, 4
/* 80008574  38 A0 00 05 */	li r5, 5
/* 80008578  38 C0 00 00 */	li r6, 0
/* 8000857C  48 35 76 75 */	bl GXSetBlendMode
/* 80008580  38 60 00 04 */	li r3, 4
/* 80008584  38 80 00 00 */	li r4, 0
/* 80008588  38 A0 00 01 */	li r5, 1
/* 8000858C  38 C0 00 04 */	li r6, 4
/* 80008590  38 E0 00 00 */	li r7, 0
/* 80008594  48 35 70 91 */	bl GXSetAlphaCompare
/* 80008598  80 0D 80 80 */	lwz r0, g_clearColor(r13)
/* 8000859C  90 01 00 08 */	stw r0, 8(r1)
/* 800085A0  38 60 00 00 */	li r3, 0
/* 800085A4  C0 22 80 38 */	lfs f1, lit_4062(r2)
/* 800085A8  FC 40 08 90 */	fmr f2, f1
/* 800085AC  FC 60 08 90 */	fmr f3, f1
/* 800085B0  FC 80 08 90 */	fmr f4, f1
/* 800085B4  38 81 00 08 */	addi r4, r1, 8
/* 800085B8  48 35 73 01 */	bl GXSetFog
/* 800085BC  38 60 00 00 */	li r3, 0
/* 800085C0  38 80 00 00 */	li r4, 0
/* 800085C4  38 A0 00 00 */	li r5, 0
/* 800085C8  48 35 75 05 */	bl GXSetFogRangeAdj
/* 800085CC  38 60 00 00 */	li r3, 0
/* 800085D0  48 35 43 DD */	bl GXSetCoPlanar
/* 800085D4  38 60 00 00 */	li r3, 0
/* 800085D8  38 80 00 11 */	li r4, 0x11
/* 800085DC  38 A0 00 00 */	li r5, 0
/* 800085E0  48 35 70 89 */	bl GXSetZTexture
/* 800085E4  38 60 00 01 */	li r3, 1
/* 800085E8  48 35 77 F1 */	bl GXSetDither
/* 800085EC  38 60 00 00 */	li r3, 0
/* 800085F0  48 35 7F E1 */	bl GXSetClipMode
/* 800085F4  38 60 00 00 */	li r3, 0
/* 800085F8  48 35 43 8D */	bl GXSetCullMode
/* 800085FC  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 80008600  80 8D 80 20 */	lwz r4, mRenderModeObj__15mDoMch_render_c(r13)
/* 80008604  48 2D CB 95 */	bl setRenderMode__8JUTVideoFPC16_GXRenderModeObj
/* 80008608  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 8000860C  81 83 00 00 */	lwz r12, 0(r3)
/* 80008610  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80008614  7D 89 03 A6 */	mtctr r12
/* 80008618  4E 80 04 21 */	bctrl 
/* 8000861C  38 60 00 01 */	li r3, 1
/* 80008620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80008624  7C 08 03 A6 */	mtlr r0
/* 80008628  38 21 00 10 */	addi r1, r1, 0x10
/* 8000862C  4E 80 00 20 */	blr 
