lbl_8046B400:
/* 8046B400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046B404  7C 08 02 A6 */	mflr r0
/* 8046B408  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046B40C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046B410  93 C1 00 08 */	stw r30, 8(r1)
/* 8046B414  7C 7F 1B 78 */	mr r31, r3
/* 8046B418  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8046B41C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8046B420  40 82 00 A8 */	bne lbl_8046B4C8
/* 8046B424  7F E0 FB 79 */	or. r0, r31, r31
/* 8046B428  41 82 00 94 */	beq lbl_8046B4BC
/* 8046B42C  7C 1E 03 78 */	mr r30, r0
/* 8046B430  4B BA D7 34 */	b __ct__10fopAc_ac_cFv
/* 8046B434  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8046B438  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8046B43C  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 8046B440  38 7E 05 90 */	addi r3, r30, 0x590
/* 8046B444  4B C1 83 1C */	b __ct__10dCcD_GSttsFv
/* 8046B448  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8046B44C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8046B450  90 7E 05 8C */	stw r3, 0x58c(r30)
/* 8046B454  38 03 00 20 */	addi r0, r3, 0x20
/* 8046B458  90 1E 05 90 */	stw r0, 0x590(r30)
/* 8046B45C  3B DE 05 B0 */	addi r30, r30, 0x5b0
/* 8046B460  7F C3 F3 78 */	mr r3, r30
/* 8046B464  4B C1 85 C4 */	b __ct__12dCcD_GObjInfFv
/* 8046B468  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8046B46C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8046B470  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8046B474  3C 60 80 47 */	lis r3, __vt__8cM3dGAab@ha
/* 8046B478  38 03 B6 78 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8046B47C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8046B480  3C 60 80 47 */	lis r3, __vt__8cM3dGSph@ha
/* 8046B484  38 03 B6 6C */	addi r0, r3, __vt__8cM3dGSph@l
/* 8046B488  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8046B48C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8046B490  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8046B494  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8046B498  38 03 00 58 */	addi r0, r3, 0x58
/* 8046B49C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8046B4A0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8046B4A4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8046B4A8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8046B4AC  38 03 00 2C */	addi r0, r3, 0x2c
/* 8046B4B0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8046B4B4  38 03 00 84 */	addi r0, r3, 0x84
/* 8046B4B8  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_8046B4BC:
/* 8046B4BC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8046B4C0  60 00 00 08 */	ori r0, r0, 8
/* 8046B4C4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8046B4C8:
/* 8046B4C8  38 7F 05 68 */	addi r3, r31, 0x568
/* 8046B4CC  3C 80 80 47 */	lis r4, stringBase0@ha
/* 8046B4D0  38 84 B5 D4 */	addi r4, r4, stringBase0@l
/* 8046B4D4  4B BC 19 E8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8046B4D8  7C 7E 1B 78 */	mr r30, r3
/* 8046B4DC  2C 1E 00 04 */	cmpwi r30, 4
/* 8046B4E0  40 82 00 40 */	bne lbl_8046B520
/* 8046B4E4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8046B4E8  98 1F 05 70 */	stb r0, 0x570(r31)
/* 8046B4EC  38 7F 05 74 */	addi r3, r31, 0x574
/* 8046B4F0  38 80 00 FF */	li r4, 0xff
/* 8046B4F4  38 A0 00 FF */	li r5, 0xff
/* 8046B4F8  7F E6 FB 78 */	mr r6, r31
/* 8046B4FC  4B C1 83 64 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8046B500  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 8046B504  3C 80 80 47 */	lis r4, cc_sph_src@ha
/* 8046B508  38 84 B5 DC */	addi r4, r4, cc_sph_src@l
/* 8046B50C  4B C1 95 28 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8046B510  38 1F 05 74 */	addi r0, r31, 0x574
/* 8046B514  90 1F 05 F4 */	stw r0, 0x5f4(r31)
/* 8046B518  38 00 00 03 */	li r0, 3
/* 8046B51C  B0 1F 05 72 */	sth r0, 0x572(r31)
lbl_8046B520:
/* 8046B520  7F C3 F3 78 */	mr r3, r30
/* 8046B524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046B528  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046B52C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046B530  7C 08 03 A6 */	mtlr r0
/* 8046B534  38 21 00 10 */	addi r1, r1, 0x10
/* 8046B538  4E 80 00 20 */	blr 
