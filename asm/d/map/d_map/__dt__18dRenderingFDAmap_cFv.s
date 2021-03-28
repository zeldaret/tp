lbl_8002ABF8:
/* 8002ABF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002ABFC  7C 08 02 A6 */	mflr r0
/* 8002AC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002AC04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002AC08  7C 7F 1B 79 */	or. r31, r3, r3
/* 8002AC0C  41 82 00 50 */	beq lbl_8002AC5C
/* 8002AC10  3C 60 80 3A */	lis r3, __vt__18dRenderingFDAmap_c@ha
/* 8002AC14  38 03 7C 90 */	addi r0, r3, __vt__18dRenderingFDAmap_c@l
/* 8002AC18  90 1F 00 00 */	stw r0, 0(r31)
/* 8002AC1C  41 82 00 30 */	beq lbl_8002AC4C
/* 8002AC20  3C 60 80 3A */	lis r3, __vt__15dRenderingMap_c@ha
/* 8002AC24  38 03 6F D4 */	addi r0, r3, __vt__15dRenderingMap_c@l
/* 8002AC28  90 1F 00 00 */	stw r0, 0(r31)
/* 8002AC2C  41 82 00 20 */	beq lbl_8002AC4C
/* 8002AC30  3C 60 80 3A */	lis r3, __vt__28dDrawPathWithNormalPattern_c@ha
/* 8002AC34  38 03 6F 94 */	addi r0, r3, __vt__28dDrawPathWithNormalPattern_c@l
/* 8002AC38  90 1F 00 00 */	stw r0, 0(r31)
/* 8002AC3C  41 82 00 10 */	beq lbl_8002AC4C
/* 8002AC40  3C 60 80 3A */	lis r3, __vt__11dDrawPath_c@ha
/* 8002AC44  38 03 7C F8 */	addi r0, r3, __vt__11dDrawPath_c@l
/* 8002AC48  90 1F 00 00 */	stw r0, 0(r31)
lbl_8002AC4C:
/* 8002AC4C  7C 80 07 35 */	extsh. r0, r4
/* 8002AC50  40 81 00 0C */	ble lbl_8002AC5C
/* 8002AC54  7F E3 FB 78 */	mr r3, r31
/* 8002AC58  48 2A 40 E5 */	bl __dl__FPv
lbl_8002AC5C:
/* 8002AC5C  7F E3 FB 78 */	mr r3, r31
/* 8002AC60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002AC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002AC68  7C 08 03 A6 */	mtlr r0
/* 8002AC6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8002AC70  4E 80 00 20 */	blr 
