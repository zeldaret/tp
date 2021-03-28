lbl_8002FF40:
/* 8002FF40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002FF44  7C 08 02 A6 */	mflr r0
/* 8002FF48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002FF4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8002FF50  48 33 22 8D */	bl _savegpr_29
/* 8002FF54  7C 7E 1B 79 */	or. r30, r3, r3
/* 8002FF58  7C 9F 23 78 */	mr r31, r4
/* 8002FF5C  41 82 01 7C */	beq lbl_800300D8
/* 8002FF60  3C 60 80 3B */	lis r3, __vt__4dCcS@ha
/* 8002FF64  38 03 C3 E4 */	addi r0, r3, __vt__4dCcS@l
/* 8002FF68  90 1E 28 48 */	stw r0, 0x2848(r30)
/* 8002FF6C  34 1E 28 4C */	addic. r0, r30, 0x284c
/* 8002FF70  41 82 01 1C */	beq lbl_8003008C
/* 8002FF74  3C 60 80 3A */	lis r3, __vt__12dCcMassS_Mng@ha
/* 8002FF78  38 03 72 30 */	addi r0, r3, __vt__12dCcMassS_Mng@l
/* 8002FF7C  90 1E 2A C0 */	stw r0, 0x2ac0(r30)
/* 8002FF80  34 1E 2A B0 */	addic. r0, r30, 0x2ab0
/* 8002FF84  41 82 00 10 */	beq lbl_8002FF94
/* 8002FF88  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha
/* 8002FF8C  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l
/* 8002FF90  90 1E 2A BC */	stw r0, 0x2abc(r30)
lbl_8002FF94:
/* 8002FF94  37 BE 2A 70 */	addic. r29, r30, 0x2a70
/* 8002FF98  41 82 00 48 */	beq lbl_8002FFE0
/* 8002FF9C  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 8002FFA0  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 8002FFA4  90 7E 2A 8C */	stw r3, 0x2a8c(r30)
/* 8002FFA8  38 03 00 58 */	addi r0, r3, 0x58
/* 8002FFAC  90 1E 2A A8 */	stw r0, 0x2aa8(r30)
/* 8002FFB0  38 7E 2A 90 */	addi r3, r30, 0x2a90
/* 8002FFB4  38 80 00 00 */	li r4, 0
/* 8002FFB8  48 23 EF ED */	bl __dt__8cM3dGCpsFv
/* 8002FFBC  28 1D 00 00 */	cmplwi r29, 0
/* 8002FFC0  41 82 00 20 */	beq lbl_8002FFE0
/* 8002FFC4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8002FFC8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8002FFCC  90 1E 2A 8C */	stw r0, 0x2a8c(r30)
/* 8002FFD0  41 82 00 10 */	beq lbl_8002FFE0
/* 8002FFD4  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 8002FFD8  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8002FFDC  90 1E 2A 88 */	stw r0, 0x2a88(r30)
lbl_8002FFE0:
/* 8002FFE0  34 9E 2A 14 */	addic. r4, r30, 0x2a14
/* 8002FFE4  41 82 00 50 */	beq lbl_80030034
/* 8002FFE8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8002FFEC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8002FFF0  90 7E 2A 30 */	stw r3, 0x2a30(r30)
/* 8002FFF4  38 03 00 58 */	addi r0, r3, 0x58
/* 8002FFF8  90 1E 2A 48 */	stw r0, 0x2a48(r30)
/* 8002FFFC  34 1E 2A 34 */	addic. r0, r30, 0x2a34
/* 80030000  41 82 00 10 */	beq lbl_80030010
/* 80030004  3C 60 80 3A */	lis r3, __vt__8cM3dGCyl@ha
/* 80030008  38 03 72 0C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8003000C  90 1E 2A 48 */	stw r0, 0x2a48(r30)
lbl_80030010:
/* 80030010  28 04 00 00 */	cmplwi r4, 0
/* 80030014  41 82 00 20 */	beq lbl_80030034
/* 80030018  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8003001C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80030020  90 1E 2A 30 */	stw r0, 0x2a30(r30)
/* 80030024  41 82 00 10 */	beq lbl_80030034
/* 80030028  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 8003002C  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80030030  90 1E 2A 2C */	stw r0, 0x2a2c(r30)
lbl_80030034:
/* 80030034  38 7E 29 D4 */	addi r3, r30, 0x29d4
/* 80030038  3C 80 80 03 */	lis r4, __dt__12dCcMassS_ObjFv@ha
/* 8003003C  38 84 00 F4 */	addi r4, r4, __dt__12dCcMassS_ObjFv@l
/* 80030040  38 A0 00 20 */	li r5, 0x20
/* 80030044  38 C0 00 02 */	li r6, 2
/* 80030048  48 33 1C A1 */	bl __destroy_arr
/* 8003004C  38 7E 28 90 */	addi r3, r30, 0x2890
/* 80030050  3C 80 80 03 */	lis r4, __dt__12dCcMassS_ObjFv@ha
/* 80030054  38 84 00 F4 */	addi r4, r4, __dt__12dCcMassS_ObjFv@l
/* 80030058  38 A0 00 20 */	li r5, 0x20
/* 8003005C  38 C0 00 0A */	li r6, 0xa
/* 80030060  48 33 1C 89 */	bl __destroy_arr
/* 80030064  34 1E 28 4C */	addic. r0, r30, 0x284c
/* 80030068  41 82 00 24 */	beq lbl_8003008C
/* 8003006C  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideArea@ha
/* 80030070  38 03 72 00 */	addi r0, r3, __vt__15cCcD_DivideArea@l
/* 80030074  90 1E 28 64 */	stw r0, 0x2864(r30)
/* 80030078  34 1E 28 4C */	addic. r0, r30, 0x284c
/* 8003007C  41 82 00 10 */	beq lbl_8003008C
/* 80030080  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 80030084  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80030088  90 1E 28 64 */	stw r0, 0x2864(r30)
lbl_8003008C:
/* 8003008C  28 1E 00 00 */	cmplwi r30, 0
/* 80030090  41 82 00 38 */	beq lbl_800300C8
/* 80030094  3C 60 80 3C */	lis r3, __vt__4cCcS@ha
/* 80030098  38 03 37 48 */	addi r0, r3, __vt__4cCcS@l
/* 8003009C  90 1E 28 48 */	stw r0, 0x2848(r30)
/* 800300A0  34 1E 28 08 */	addic. r0, r30, 0x2808
/* 800300A4  41 82 00 24 */	beq lbl_800300C8
/* 800300A8  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideArea@ha
/* 800300AC  38 03 72 00 */	addi r0, r3, __vt__15cCcD_DivideArea@l
/* 800300B0  90 1E 28 20 */	stw r0, 0x2820(r30)
/* 800300B4  34 1E 28 08 */	addic. r0, r30, 0x2808
/* 800300B8  41 82 00 10 */	beq lbl_800300C8
/* 800300BC  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 800300C0  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 800300C4  90 1E 28 20 */	stw r0, 0x2820(r30)
lbl_800300C8:
/* 800300C8  7F E0 07 35 */	extsh. r0, r31
/* 800300CC  40 81 00 0C */	ble lbl_800300D8
/* 800300D0  7F C3 F3 78 */	mr r3, r30
/* 800300D4  48 29 EC 69 */	bl __dl__FPv
lbl_800300D8:
/* 800300D8  7F C3 F3 78 */	mr r3, r30
/* 800300DC  39 61 00 20 */	addi r11, r1, 0x20
/* 800300E0  48 33 21 49 */	bl _restgpr_29
/* 800300E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800300E8  7C 08 03 A6 */	mtlr r0
/* 800300EC  38 21 00 20 */	addi r1, r1, 0x20
/* 800300F0  4E 80 00 20 */	blr 
