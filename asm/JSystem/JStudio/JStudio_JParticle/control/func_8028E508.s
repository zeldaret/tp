lbl_8028E508:
/* 8028E508  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028E50C  7C 08 02 A6 */	mflr r0
/* 8028E510  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028E514  39 61 00 20 */	addi r11, r1, 0x20
/* 8028E518  48 0D 3C C5 */	bl _savegpr_29
/* 8028E51C  7C 7D 1B 78 */	mr r29, r3
/* 8028E520  7C 9E 23 78 */	mr r30, r4
/* 8028E524  38 60 01 DC */	li r3, 0x1dc
/* 8028E528  48 04 07 25 */	bl __nw__FUl
/* 8028E52C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8028E530  41 82 00 10 */	beq lbl_8028E540
/* 8028E534  7F C4 F3 78 */	mr r4, r30
/* 8028E538  48 00 00 D5 */	bl __ct__Q217JStudio_JParticle17TAdaptor_particleFPQ217JStudio_JParticle13TCreateObject
/* 8028E53C  7C 7F 1B 78 */	mr r31, r3
lbl_8028E540:
/* 8028E540  28 1F 00 00 */	cmplwi r31, 0
/* 8028E544  40 82 00 0C */	bne lbl_8028E550
/* 8028E548  38 60 00 00 */	li r3, 0
/* 8028E54C  48 00 00 A8 */	b lbl_8028E5F4
lbl_8028E550:
/* 8028E550  93 E1 00 08 */	stw r31, 8(r1)
/* 8028E554  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 8028E558  98 1F 01 B4 */	stb r0, 0x1b4(r31)
/* 8028E55C  38 60 00 38 */	li r3, 0x38
/* 8028E560  48 04 06 ED */	bl __nw__FUl
/* 8028E564  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028E568  41 82 00 14 */	beq lbl_8028E57C
/* 8028E56C  7F A4 EB 78 */	mr r4, r29
/* 8028E570  7F E5 FB 78 */	mr r5, r31
/* 8028E574  4B FF 91 F9 */	bl __ct__Q27JStudio16TObject_particleFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio17TAdaptor_particle
/* 8028E578  7C 7E 1B 78 */	mr r30, r3
lbl_8028E57C:
/* 8028E57C  28 1E 00 00 */	cmplwi r30, 0
/* 8028E580  40 82 00 0C */	bne lbl_8028E58C
/* 8028E584  3B C0 00 00 */	li r30, 0
/* 8028E588  48 00 00 28 */	b lbl_8028E5B0
lbl_8028E58C:
/* 8028E58C  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8028E590  28 03 00 00 */	cmplwi r3, 0
/* 8028E594  41 82 00 1C */	beq lbl_8028E5B0
/* 8028E598  93 C3 00 04 */	stw r30, 4(r3)
/* 8028E59C  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8028E5A0  81 83 00 00 */	lwz r12, 0(r3)
/* 8028E5A4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8028E5A8  7D 89 03 A6 */	mtctr r12
/* 8028E5AC  4E 80 04 21 */	bctrl 
lbl_8028E5B0:
/* 8028E5B0  28 1E 00 00 */	cmplwi r30, 0
/* 8028E5B4  40 82 00 2C */	bne lbl_8028E5E0
/* 8028E5B8  80 61 00 08 */	lwz r3, 8(r1)
/* 8028E5BC  28 03 00 00 */	cmplwi r3, 0
/* 8028E5C0  41 82 00 18 */	beq lbl_8028E5D8
/* 8028E5C4  38 80 00 01 */	li r4, 1
/* 8028E5C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8028E5CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8028E5D0  7D 89 03 A6 */	mtctr r12
/* 8028E5D4  4E 80 04 21 */	bctrl 
lbl_8028E5D8:
/* 8028E5D8  38 60 00 00 */	li r3, 0
/* 8028E5DC  48 00 00 18 */	b lbl_8028E5F4
lbl_8028E5E0:
/* 8028E5E0  38 00 00 00 */	li r0, 0
/* 8028E5E4  90 01 00 08 */	stw r0, 8(r1)
/* 8028E5E8  48 00 00 08 */	b lbl_8028E5F0
/* 8028E5EC  4E 80 04 21 */	bctrl 
lbl_8028E5F0:
/* 8028E5F0  7F C3 F3 78 */	mr r3, r30
lbl_8028E5F4:
/* 8028E5F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8028E5F8  48 0D 3C 31 */	bl _restgpr_29
/* 8028E5FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028E600  7C 08 03 A6 */	mtlr r0
/* 8028E604  38 21 00 20 */	addi r1, r1, 0x20
/* 8028E608  4E 80 00 20 */	blr 
