lbl_8028D9A4:
/* 8028D9A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D9A8  7C 08 02 A6 */	mflr r0
/* 8028D9AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D9B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028D9B4  7C 7F 1B 78 */	mr r31, r3
/* 8028D9B8  88 0D 8C 78 */	lbz r0, data_804511F8(r13)
/* 8028D9BC  7C 00 07 75 */	extsb. r0, r0
/* 8028D9C0  40 82 00 4C */	bne lbl_8028DA0C
/* 8028D9C4  38 00 00 00 */	li r0, 0
/* 8028D9C8  3C 60 80 43 */	lis r3, aoData@ha
/* 8028D9CC  38 A3 14 90 */	addi r5, r3, aoData@l
/* 8028D9D0  90 05 00 00 */	stw r0, 0(r5)
/* 8028D9D4  C0 02 BB 10 */	lfs f0, lit_1470(r2)
/* 8028D9D8  D0 05 00 04 */	stfs f0, 4(r5)
/* 8028D9DC  38 80 00 01 */	li r4, 1
/* 8028D9E0  90 85 00 08 */	stw r4, 8(r5)
/* 8028D9E4  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 8028D9E8  38 00 00 02 */	li r0, 2
/* 8028D9EC  90 05 00 10 */	stw r0, 0x10(r5)
/* 8028D9F0  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 8028D9F4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8028D9F8  C0 03 0A E0 */	lfs f0, __float_nan@l(r3)
/* 8028D9FC  38 00 FF FF */	li r0, -1
/* 8028DA00  90 05 00 18 */	stw r0, 0x18(r5)
/* 8028DA04  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 8028DA08  98 8D 8C 78 */	stb r4, data_804511F8(r13)
lbl_8028DA0C:
/* 8028DA0C  7F E3 FB 78 */	mr r3, r31
/* 8028DA10  3C 80 80 43 */	lis r4, aoData@ha
/* 8028DA14  38 84 14 90 */	addi r4, r4, aoData@l
/* 8028DA18  4B FF 87 A9 */	bl adaptor_setVariableValue_immediate__Q27JStudio8TAdaptorFPCQ37JStudio8TAdaptor27TSetVariableValue_immediate
/* 8028DA1C  3C 60 80 43 */	lis r3, saoVVOSetValue___Q215JStudio_JAudio214TAdaptor_sound@ha
/* 8028DA20  38 03 14 F8 */	addi r0, r3, saoVVOSetValue___Q215JStudio_JAudio214TAdaptor_sound@l
/* 8028DA24  7C 04 03 78 */	mr r4, r0
/* 8028DA28  48 00 00 2C */	b lbl_8028DA54
lbl_8028DA2C:
/* 8028DA2C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8028DA30  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028DA34  7C 63 02 14 */	add r3, r3, r0
/* 8028DA38  28 04 00 00 */	cmplwi r4, 0
/* 8028DA3C  41 82 00 0C */	beq lbl_8028DA48
/* 8028DA40  7C 80 23 78 */	mr r0, r4
/* 8028DA44  48 00 00 08 */	b lbl_8028DA4C
lbl_8028DA48:
/* 8028DA48  38 0D 8C 70 */	la r0, soOutput_none___Q27JStudio14TVariableValue(r13) /* 804511F0-_SDA_BASE_ */
lbl_8028DA4C:
/* 8028DA4C  90 03 00 10 */	stw r0, 0x10(r3)
/* 8028DA50  38 84 00 0C */	addi r4, r4, 0xc
lbl_8028DA54:
/* 8028DA54  80 04 00 04 */	lwz r0, 4(r4)
/* 8028DA58  2C 00 FF FF */	cmpwi r0, -1
/* 8028DA5C  40 82 FF D0 */	bne lbl_8028DA2C
/* 8028DA60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028DA64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028DA68  7C 08 03 A6 */	mtlr r0
/* 8028DA6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028DA70  4E 80 00 20 */	blr 
