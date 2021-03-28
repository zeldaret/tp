lbl_80708874:
/* 80708874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80708878  7C 08 02 A6 */	mflr r0
/* 8070887C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80708880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80708884  93 C1 00 08 */	stw r30, 8(r1)
/* 80708888  3C 60 80 71 */	lis r3, lit_1109@ha
/* 8070888C  3B C3 8B F0 */	addi r30, r3, lit_1109@l
/* 80708890  3C 60 80 71 */	lis r3, lit_3764@ha
/* 80708894  3B E3 8A 10 */	addi r31, r3, lit_3764@l
/* 80708898  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8070889C  4B FF D8 D1 */	bl __ct__12daE_MB_HIO_cFv
/* 807088A0  3C 80 80 71 */	lis r4, __dt__12daE_MB_HIO_cFv@ha
/* 807088A4  38 84 88 2C */	addi r4, r4, __dt__12daE_MB_HIO_cFv@l
/* 807088A8  38 BE 00 40 */	addi r5, r30, 0x40
/* 807088AC  4B FF D8 4D */	bl __register_global_object
/* 807088B0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 807088B4  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 807088B8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807088BC  38 7E 00 74 */	addi r3, r30, 0x74
/* 807088C0  D0 03 00 04 */	stfs f0, 4(r3)
/* 807088C4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807088C8  D0 03 00 08 */	stfs f0, 8(r3)
/* 807088CC  3C 80 80 70 */	lis r4, __dt__4cXyzFv@ha
/* 807088D0  38 84 68 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 807088D4  38 BE 00 68 */	addi r5, r30, 0x68
/* 807088D8  4B FF D8 21 */	bl __register_global_object
/* 807088DC  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807088E0  D0 1E 00 8C */	stfs f0, 0x8c(r30)
/* 807088E4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807088E8  38 7E 00 8C */	addi r3, r30, 0x8c
/* 807088EC  D0 03 00 04 */	stfs f0, 4(r3)
/* 807088F0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807088F4  D0 03 00 08 */	stfs f0, 8(r3)
/* 807088F8  3C 80 80 70 */	lis r4, __dt__4cXyzFv@ha
/* 807088FC  38 84 68 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 80708900  38 BE 00 80 */	addi r5, r30, 0x80
/* 80708904  4B FF D7 F5 */	bl __register_global_object
/* 80708908  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8070890C  D0 1E 00 A4 */	stfs f0, 0xa4(r30)
/* 80708910  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80708914  38 7E 00 A4 */	addi r3, r30, 0xa4
/* 80708918  D0 03 00 04 */	stfs f0, 4(r3)
/* 8070891C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80708920  D0 03 00 08 */	stfs f0, 8(r3)
/* 80708924  3C 80 80 70 */	lis r4, __dt__4cXyzFv@ha
/* 80708928  38 84 68 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 8070892C  38 BE 00 98 */	addi r5, r30, 0x98
/* 80708930  4B FF D7 C9 */	bl __register_global_object
/* 80708934  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80708938  D0 1E 00 BC */	stfs f0, 0xbc(r30)
/* 8070893C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80708940  38 7E 00 BC */	addi r3, r30, 0xbc
/* 80708944  D0 03 00 04 */	stfs f0, 4(r3)
/* 80708948  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8070894C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80708950  3C 80 80 70 */	lis r4, __dt__4cXyzFv@ha
/* 80708954  38 84 68 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 80708958  38 BE 00 B0 */	addi r5, r30, 0xb0
/* 8070895C  4B FF D7 9D */	bl __register_global_object
/* 80708960  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80708964  D0 1E 00 D4 */	stfs f0, 0xd4(r30)
/* 80708968  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8070896C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80708970  D0 03 00 04 */	stfs f0, 4(r3)
/* 80708974  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80708978  D0 03 00 08 */	stfs f0, 8(r3)
/* 8070897C  3C 80 80 70 */	lis r4, __dt__4cXyzFv@ha
/* 80708980  38 84 68 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 80708984  38 BE 00 C8 */	addi r5, r30, 0xc8
/* 80708988  4B FF D7 71 */	bl __register_global_object
/* 8070898C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80708990  D0 1E 00 EC */	stfs f0, 0xec(r30)
/* 80708994  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80708998  38 7E 00 EC */	addi r3, r30, 0xec
/* 8070899C  D0 03 00 04 */	stfs f0, 4(r3)
/* 807089A0  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 807089A4  D0 03 00 08 */	stfs f0, 8(r3)
/* 807089A8  3C 80 80 70 */	lis r4, __dt__4cXyzFv@ha
/* 807089AC  38 84 68 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 807089B0  38 BE 00 E0 */	addi r5, r30, 0xe0
/* 807089B4  4B FF D7 45 */	bl __register_global_object
/* 807089B8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 807089BC  D0 1E 01 04 */	stfs f0, 0x104(r30)
/* 807089C0  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 807089C4  38 7E 01 04 */	addi r3, r30, 0x104
/* 807089C8  D0 03 00 04 */	stfs f0, 4(r3)
/* 807089CC  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807089D0  D0 03 00 08 */	stfs f0, 8(r3)
/* 807089D4  3C 80 80 70 */	lis r4, __dt__4cXyzFv@ha
/* 807089D8  38 84 68 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 807089DC  38 BE 00 F8 */	addi r5, r30, 0xf8
/* 807089E0  4B FF D7 19 */	bl __register_global_object
/* 807089E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807089E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 807089EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807089F0  7C 08 03 A6 */	mtlr r0
/* 807089F4  38 21 00 10 */	addi r1, r1, 0x10
/* 807089F8  4E 80 00 20 */	blr 
