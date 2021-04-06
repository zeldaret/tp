lbl_806581C0:
/* 806581C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806581C4  7C 08 02 A6 */	mflr r0
/* 806581C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806581CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806581D0  93 C1 00 08 */	stw r30, 8(r1)
/* 806581D4  7C 7F 1B 78 */	mr r31, r3
/* 806581D8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806581DC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806581E0  40 82 00 A8 */	bne lbl_80658288
/* 806581E4  7F E0 FB 79 */	or. r0, r31, r31
/* 806581E8  41 82 00 94 */	beq lbl_8065827C
/* 806581EC  7C 1E 03 78 */	mr r30, r0
/* 806581F0  4B 9C 09 75 */	bl __ct__10fopAc_ac_cFv
/* 806581F4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806581F8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806581FC  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80658200  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80658204  4B A2 B5 5D */	bl __ct__10dCcD_GSttsFv
/* 80658208  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8065820C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80658210  90 7E 05 A0 */	stw r3, 0x5a0(r30)
/* 80658214  38 03 00 20 */	addi r0, r3, 0x20
/* 80658218  90 1E 05 A4 */	stw r0, 0x5a4(r30)
/* 8065821C  3B DE 05 C4 */	addi r30, r30, 0x5c4
/* 80658220  7F C3 F3 78 */	mr r3, r30
/* 80658224  4B A2 B8 05 */	bl __ct__12dCcD_GObjInfFv
/* 80658228  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8065822C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80658230  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80658234  3C 60 80 66 */	lis r3, __vt__8cM3dGAab@ha /* 0x806584C4@ha */
/* 80658238  38 03 84 C4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806584C4@l */
/* 8065823C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80658240  3C 60 80 66 */	lis r3, __vt__8cM3dGSph@ha /* 0x806584D0@ha */
/* 80658244  38 03 84 D0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806584D0@l */
/* 80658248  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8065824C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80658250  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80658254  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80658258  38 03 00 58 */	addi r0, r3, 0x58
/* 8065825C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80658260  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80658264  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80658268  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8065826C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80658270  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80658274  38 03 00 84 */	addi r0, r3, 0x84
/* 80658278  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_8065827C:
/* 8065827C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80658280  60 00 00 08 */	ori r0, r0, 8
/* 80658284  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80658288:
/* 80658288  7F E3 FB 78 */	mr r3, r31
/* 8065828C  4B FF F8 ED */	bl create_init__13daCoachFire_cFv
/* 80658290  38 60 00 04 */	li r3, 4
/* 80658294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80658298  83 C1 00 08 */	lwz r30, 8(r1)
/* 8065829C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806582A0  7C 08 03 A6 */	mtlr r0
/* 806582A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806582A8  4E 80 00 20 */	blr 
