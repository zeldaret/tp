lbl_802BDEF0:
/* 802BDEF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BDEF4  7C 08 02 A6 */	mflr r0
/* 802BDEF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BDEFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BDF00  7C 7F 1B 78 */	mr r31, r3
/* 802BDF04  4B FE D1 79 */	bl __ct__14Z2SoundHandlesFv
/* 802BDF08  3C 60 80 3D */	lis r3, __vt__14Z2SoundObjBase@ha
/* 802BDF0C  38 03 AD 50 */	addi r0, r3, __vt__14Z2SoundObjBase@l
/* 802BDF10  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802BDF14  38 60 00 00 */	li r3, 0
/* 802BDF18  90 7F 00 18 */	stw r3, 0x18(r31)
/* 802BDF1C  98 7F 00 1F */	stb r3, 0x1f(r31)
/* 802BDF20  80 0D 85 F4 */	lwz r0, data_80450B74(r13)
/* 802BDF24  90 1F 00 14 */	stw r0, 0x14(r31)
/* 802BDF28  B0 7F 00 1C */	sth r3, 0x1c(r31)
/* 802BDF2C  98 7F 00 1E */	stb r3, 0x1e(r31)
/* 802BDF30  7F E3 FB 78 */	mr r3, r31
/* 802BDF34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BDF38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BDF3C  7C 08 03 A6 */	mtlr r0
/* 802BDF40  38 21 00 10 */	addi r1, r1, 0x10
/* 802BDF44  4E 80 00 20 */	blr 
