lbl_80CC38C4:
/* 80CC38C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC38C8  7C 08 02 A6 */	mflr r0
/* 80CC38CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC38D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC38D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC38D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CC38DC  7C 9F 23 78 */	mr r31, r4
/* 80CC38E0  41 82 00 94 */	beq lbl_80CC3974
/* 80CC38E4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80CC38E8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80CC38EC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CC38F0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CC38F4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CC38F8  38 03 00 84 */	addi r0, r3, 0x84
/* 80CC38FC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CC3900  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CC3904  41 82 00 54 */	beq lbl_80CC3958
/* 80CC3908  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80CC390C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80CC3910  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CC3914  38 03 00 58 */	addi r0, r3, 0x58
/* 80CC3918  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CC391C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80CC3920  41 82 00 10 */	beq lbl_80CC3930
/* 80CC3924  3C 60 80 CC */	lis r3, __vt__8cM3dGSph@ha /* 0x80CC3C48@ha */
/* 80CC3928  38 03 3C 48 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80CC3C48@l */
/* 80CC392C  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80CC3930:
/* 80CC3930  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CC3934  41 82 00 24 */	beq lbl_80CC3958
/* 80CC3938  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CC393C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CC3940  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CC3944  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CC3948  41 82 00 10 */	beq lbl_80CC3958
/* 80CC394C  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha /* 0x80CC3C54@ha */
/* 80CC3950  38 03 3C 54 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CC3C54@l */
/* 80CC3954  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80CC3958:
/* 80CC3958  7F C3 F3 78 */	mr r3, r30
/* 80CC395C  38 80 00 00 */	li r4, 0
/* 80CC3960  4B 3C 07 85 */	bl __dt__12dCcD_GObjInfFv
/* 80CC3964  7F E0 07 35 */	extsh. r0, r31
/* 80CC3968  40 81 00 0C */	ble lbl_80CC3974
/* 80CC396C  7F C3 F3 78 */	mr r3, r30
/* 80CC3970  4B 60 B3 CD */	bl __dl__FPv
lbl_80CC3974:
/* 80CC3974  7F C3 F3 78 */	mr r3, r30
/* 80CC3978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC397C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC3980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC3984  7C 08 03 A6 */	mtlr r0
/* 80CC3988  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC398C  4E 80 00 20 */	blr 
