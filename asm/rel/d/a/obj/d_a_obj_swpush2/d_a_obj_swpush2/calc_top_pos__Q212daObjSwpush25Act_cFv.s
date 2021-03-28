lbl_80CFEBE4:
/* 80CFEBE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFEBE8  7C 08 02 A6 */	mflr r0
/* 80CFEBEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFEBF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFEBF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CFEBF8  7C 7E 1B 78 */	mr r30, r3
/* 80CFEBFC  3C 60 80 D0 */	lis r3, M_arcname__Q212daObjSwpush25Act_c@ha
/* 80CFEC00  3B E3 FB F4 */	addi r31, r3, M_arcname__Q212daObjSwpush25Act_c@l
/* 80CFEC04  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80CFEC08  C0 3E 05 EC */	lfs f1, 0x5ec(r30)
/* 80CFEC0C  C0 5F 01 08 */	lfs f2, 0x108(r31)
/* 80CFEC10  C0 7F 01 0C */	lfs f3, 0x10c(r31)
/* 80CFEC14  C0 9F 01 10 */	lfs f4, 0x110(r31)
/* 80CFEC18  4B 57 0D 64 */	b cLib_addCalc__FPfffff
/* 80CFEC1C  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 80CFEC20  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80CFEC24  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80CFEC28  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CFEC2C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CFEC30  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80CFEC34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFEC38  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CFEC3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFEC40  7C 08 03 A6 */	mtlr r0
/* 80CFEC44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFEC48  4E 80 00 20 */	blr 
