lbl_8028D624:
/* 8028D624  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028D628  7C 08 02 A6 */	mflr r0
/* 8028D62C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028D630  39 61 00 20 */	addi r11, r1, 0x20
/* 8028D634  48 0D 4B A9 */	bl _savegpr_29
/* 8028D638  7C 7D 1B 78 */	mr r29, r3
/* 8028D63C  7C 9E 23 78 */	mr r30, r4
/* 8028D640  38 60 01 48 */	li r3, 0x148
/* 8028D644  48 04 16 09 */	bl __nw__FUl
/* 8028D648  7C 7F 1B 79 */	or. r31, r3, r3
/* 8028D64C  41 82 00 10 */	beq lbl_8028D65C
/* 8028D650  7F C4 F3 78 */	mr r4, r30
/* 8028D654  48 00 01 D5 */	bl __ct__Q215JStudio_JAudio214TAdaptor_soundFPQ215JStudio_JAudio213TCreateObject
/* 8028D658  7C 7F 1B 78 */	mr r31, r3
lbl_8028D65C:
/* 8028D65C  28 1F 00 00 */	cmplwi r31, 0
/* 8028D660  40 82 00 0C */	bne lbl_8028D66C
/* 8028D664  38 60 00 00 */	li r3, 0
/* 8028D668  48 00 00 A8 */	b lbl_8028D710
lbl_8028D66C:
/* 8028D66C  93 E1 00 08 */	stw r31, 8(r1)
/* 8028D670  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 8028D674  98 1F 01 1C */	stb r0, 0x11c(r31)
/* 8028D678  38 60 00 38 */	li r3, 0x38
/* 8028D67C  48 04 15 D1 */	bl __nw__FUl
/* 8028D680  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028D684  41 82 00 14 */	beq lbl_8028D698
/* 8028D688  7F A4 EB 78 */	mr r4, r29
/* 8028D68C  7F E5 FB 78 */	mr r5, r31
/* 8028D690  4B FF A5 0D */	bl __ct__Q27JStudio13TObject_soundFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio14TAdaptor_sound
/* 8028D694  7C 7E 1B 78 */	mr r30, r3
lbl_8028D698:
/* 8028D698  28 1E 00 00 */	cmplwi r30, 0
/* 8028D69C  40 82 00 0C */	bne lbl_8028D6A8
/* 8028D6A0  3B C0 00 00 */	li r30, 0
/* 8028D6A4  48 00 00 28 */	b lbl_8028D6CC
lbl_8028D6A8:
/* 8028D6A8  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8028D6AC  28 03 00 00 */	cmplwi r3, 0
/* 8028D6B0  41 82 00 1C */	beq lbl_8028D6CC
/* 8028D6B4  93 C3 00 04 */	stw r30, 4(r3)
/* 8028D6B8  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8028D6BC  81 83 00 00 */	lwz r12, 0(r3)
/* 8028D6C0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8028D6C4  7D 89 03 A6 */	mtctr r12
/* 8028D6C8  4E 80 04 21 */	bctrl 
lbl_8028D6CC:
/* 8028D6CC  28 1E 00 00 */	cmplwi r30, 0
/* 8028D6D0  40 82 00 2C */	bne lbl_8028D6FC
/* 8028D6D4  80 61 00 08 */	lwz r3, 8(r1)
/* 8028D6D8  28 03 00 00 */	cmplwi r3, 0
/* 8028D6DC  41 82 00 18 */	beq lbl_8028D6F4
/* 8028D6E0  38 80 00 01 */	li r4, 1
/* 8028D6E4  81 83 00 00 */	lwz r12, 0(r3)
/* 8028D6E8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8028D6EC  7D 89 03 A6 */	mtctr r12
/* 8028D6F0  4E 80 04 21 */	bctrl 
lbl_8028D6F4:
/* 8028D6F4  38 60 00 00 */	li r3, 0
/* 8028D6F8  48 00 00 18 */	b lbl_8028D710
lbl_8028D6FC:
/* 8028D6FC  38 00 00 00 */	li r0, 0
/* 8028D700  90 01 00 08 */	stw r0, 8(r1)
/* 8028D704  48 00 00 08 */	b lbl_8028D70C
/* 8028D708  4E 80 04 21 */	bctrl 
lbl_8028D70C:
/* 8028D70C  7F C3 F3 78 */	mr r3, r30
lbl_8028D710:
/* 8028D710  39 61 00 20 */	addi r11, r1, 0x20
/* 8028D714  48 0D 4B 15 */	bl _restgpr_29
/* 8028D718  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028D71C  7C 08 03 A6 */	mtlr r0
/* 8028D720  38 21 00 20 */	addi r1, r1, 0x20
/* 8028D724  4E 80 00 20 */	blr 
