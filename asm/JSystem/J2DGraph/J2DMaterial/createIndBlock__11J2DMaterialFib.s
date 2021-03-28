lbl_802EA5C4:
/* 802EA5C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA5C8  7C 08 02 A6 */	mflr r0
/* 802EA5CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA5D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EA5D4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802EA5D8  41 82 00 D8 */	beq lbl_802EA6B0
/* 802EA5DC  2C 03 00 00 */	cmpwi r3, 0
/* 802EA5E0  41 82 00 A4 */	beq lbl_802EA684
/* 802EA5E4  38 60 00 6C */	li r3, 0x6c
/* 802EA5E8  4B FE 46 65 */	bl __nw__FUl
/* 802EA5EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EA5F0  41 82 00 8C */	beq lbl_802EA67C
/* 802EA5F4  3C 60 80 3D */	lis r3, __vt__11J2DIndBlock@ha
/* 802EA5F8  38 03 CA 40 */	addi r0, r3, __vt__11J2DIndBlock@l
/* 802EA5FC  90 1F 00 00 */	stw r0, 0(r31)
/* 802EA600  3C 60 80 3D */	lis r3, __vt__15J2DIndBlockFull@ha
/* 802EA604  38 03 CA 90 */	addi r0, r3, __vt__15J2DIndBlockFull@l
/* 802EA608  90 1F 00 00 */	stw r0, 0(r31)
/* 802EA60C  38 7F 00 05 */	addi r3, r31, 5
/* 802EA610  3C 80 80 2F */	lis r4, __ct__14J2DIndTexOrderFv@ha
/* 802EA614  38 84 B3 78 */	addi r4, r4, __ct__14J2DIndTexOrderFv@l
/* 802EA618  38 A0 00 00 */	li r5, 0
/* 802EA61C  38 C0 00 02 */	li r6, 2
/* 802EA620  38 E0 00 04 */	li r7, 4
/* 802EA624  48 07 77 3D */	bl __construct_array
/* 802EA628  38 7F 00 10 */	addi r3, r31, 0x10
/* 802EA62C  3C 80 80 2F */	lis r4, __ct__12J2DIndTexMtxFv@ha
/* 802EA630  38 84 B3 20 */	addi r4, r4, __ct__12J2DIndTexMtxFv@l
/* 802EA634  3C A0 80 2F */	lis r5, __dt__12J2DIndTexMtxFv@ha
/* 802EA638  38 A5 B2 E4 */	addi r5, r5, __dt__12J2DIndTexMtxFv@l
/* 802EA63C  38 C0 00 1C */	li r6, 0x1c
/* 802EA640  38 E0 00 03 */	li r7, 3
/* 802EA644  48 07 77 1D */	bl __construct_array
/* 802EA648  38 7F 00 64 */	addi r3, r31, 0x64
/* 802EA64C  3C 80 80 2F */	lis r4, __ct__19J2DIndTexCoordScaleFv@ha
/* 802EA650  38 84 B2 CC */	addi r4, r4, __ct__19J2DIndTexCoordScaleFv@l
/* 802EA654  3C A0 80 2F */	lis r5, __dt__19J2DIndTexCoordScaleFv@ha
/* 802EA658  38 A5 B2 90 */	addi r5, r5, __dt__19J2DIndTexCoordScaleFv@l
/* 802EA65C  38 C0 00 02 */	li r6, 2
/* 802EA660  38 E0 00 04 */	li r7, 4
/* 802EA664  48 07 76 FD */	bl __construct_array
/* 802EA668  7F E3 FB 78 */	mr r3, r31
/* 802EA66C  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EA670  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EA674  7D 89 03 A6 */	mtctr r12
/* 802EA678  4E 80 04 21 */	bctrl 
lbl_802EA67C:
/* 802EA67C  7F E3 FB 78 */	mr r3, r31
/* 802EA680  48 00 01 08 */	b lbl_802EA788
lbl_802EA684:
/* 802EA684  38 60 00 04 */	li r3, 4
/* 802EA688  4B FE 45 C5 */	bl __nw__FUl
/* 802EA68C  28 03 00 00 */	cmplwi r3, 0
/* 802EA690  41 82 00 F8 */	beq lbl_802EA788
/* 802EA694  3C 80 80 3D */	lis r4, __vt__11J2DIndBlock@ha
/* 802EA698  38 04 CA 40 */	addi r0, r4, __vt__11J2DIndBlock@l
/* 802EA69C  90 03 00 00 */	stw r0, 0(r3)
/* 802EA6A0  3C 80 80 3D */	lis r4, __vt__15J2DIndBlockNull@ha
/* 802EA6A4  38 04 CA 08 */	addi r0, r4, __vt__15J2DIndBlockNull@l
/* 802EA6A8  90 03 00 00 */	stw r0, 0(r3)
/* 802EA6AC  48 00 00 DC */	b lbl_802EA788
lbl_802EA6B0:
/* 802EA6B0  2C 03 00 00 */	cmpwi r3, 0
/* 802EA6B4  41 82 00 A8 */	beq lbl_802EA75C
/* 802EA6B8  38 60 00 6C */	li r3, 0x6c
/* 802EA6BC  38 80 FF FC */	li r4, -4
/* 802EA6C0  4B FE 45 B5 */	bl __nw__FUli
/* 802EA6C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EA6C8  41 82 00 8C */	beq lbl_802EA754
/* 802EA6CC  3C 60 80 3D */	lis r3, __vt__11J2DIndBlock@ha
/* 802EA6D0  38 03 CA 40 */	addi r0, r3, __vt__11J2DIndBlock@l
/* 802EA6D4  90 1F 00 00 */	stw r0, 0(r31)
/* 802EA6D8  3C 60 80 3D */	lis r3, __vt__15J2DIndBlockFull@ha
/* 802EA6DC  38 03 CA 90 */	addi r0, r3, __vt__15J2DIndBlockFull@l
/* 802EA6E0  90 1F 00 00 */	stw r0, 0(r31)
/* 802EA6E4  38 7F 00 05 */	addi r3, r31, 5
/* 802EA6E8  3C 80 80 2F */	lis r4, __ct__14J2DIndTexOrderFv@ha
/* 802EA6EC  38 84 B3 78 */	addi r4, r4, __ct__14J2DIndTexOrderFv@l
/* 802EA6F0  38 A0 00 00 */	li r5, 0
/* 802EA6F4  38 C0 00 02 */	li r6, 2
/* 802EA6F8  38 E0 00 04 */	li r7, 4
/* 802EA6FC  48 07 76 65 */	bl __construct_array
/* 802EA700  38 7F 00 10 */	addi r3, r31, 0x10
/* 802EA704  3C 80 80 2F */	lis r4, __ct__12J2DIndTexMtxFv@ha
/* 802EA708  38 84 B3 20 */	addi r4, r4, __ct__12J2DIndTexMtxFv@l
/* 802EA70C  3C A0 80 2F */	lis r5, __dt__12J2DIndTexMtxFv@ha
/* 802EA710  38 A5 B2 E4 */	addi r5, r5, __dt__12J2DIndTexMtxFv@l
/* 802EA714  38 C0 00 1C */	li r6, 0x1c
/* 802EA718  38 E0 00 03 */	li r7, 3
/* 802EA71C  48 07 76 45 */	bl __construct_array
/* 802EA720  38 7F 00 64 */	addi r3, r31, 0x64
/* 802EA724  3C 80 80 2F */	lis r4, __ct__19J2DIndTexCoordScaleFv@ha
/* 802EA728  38 84 B2 CC */	addi r4, r4, __ct__19J2DIndTexCoordScaleFv@l
/* 802EA72C  3C A0 80 2F */	lis r5, __dt__19J2DIndTexCoordScaleFv@ha
/* 802EA730  38 A5 B2 90 */	addi r5, r5, __dt__19J2DIndTexCoordScaleFv@l
/* 802EA734  38 C0 00 02 */	li r6, 2
/* 802EA738  38 E0 00 04 */	li r7, 4
/* 802EA73C  48 07 76 25 */	bl __construct_array
/* 802EA740  7F E3 FB 78 */	mr r3, r31
/* 802EA744  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EA748  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EA74C  7D 89 03 A6 */	mtctr r12
/* 802EA750  4E 80 04 21 */	bctrl 
lbl_802EA754:
/* 802EA754  7F E3 FB 78 */	mr r3, r31
/* 802EA758  48 00 00 30 */	b lbl_802EA788
lbl_802EA75C:
/* 802EA75C  38 60 00 04 */	li r3, 4
/* 802EA760  38 80 FF FC */	li r4, -4
/* 802EA764  4B FE 45 11 */	bl __nw__FUli
/* 802EA768  28 03 00 00 */	cmplwi r3, 0
/* 802EA76C  41 82 00 1C */	beq lbl_802EA788
/* 802EA770  3C 80 80 3D */	lis r4, __vt__11J2DIndBlock@ha
/* 802EA774  38 04 CA 40 */	addi r0, r4, __vt__11J2DIndBlock@l
/* 802EA778  90 03 00 00 */	stw r0, 0(r3)
/* 802EA77C  3C 80 80 3D */	lis r4, __vt__15J2DIndBlockNull@ha
/* 802EA780  38 04 CA 08 */	addi r0, r4, __vt__15J2DIndBlockNull@l
/* 802EA784  90 03 00 00 */	stw r0, 0(r3)
lbl_802EA788:
/* 802EA788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EA78C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA790  7C 08 03 A6 */	mtlr r0
/* 802EA794  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA798  4E 80 00 20 */	blr 
