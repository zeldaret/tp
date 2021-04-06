lbl_804BAF08:
/* 804BAF08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BAF0C  7C 08 02 A6 */	mflr r0
/* 804BAF10  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BAF14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BAF18  93 C1 00 08 */	stw r30, 8(r1)
/* 804BAF1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804BAF20  7C 9F 23 78 */	mr r31, r4
/* 804BAF24  41 82 00 38 */	beq lbl_804BAF5C
/* 804BAF28  3C 60 80 4C */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x804BBAFC@ha */
/* 804BAF2C  38 03 BA FC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x804BBAFC@l */
/* 804BAF30  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804BAF34  38 7E 00 14 */	addi r3, r30, 0x14
/* 804BAF38  38 80 FF FF */	li r4, -1
/* 804BAF3C  4B DB 3F DD */	bl __dt__8cM3dGCirFv
/* 804BAF40  7F C3 F3 78 */	mr r3, r30
/* 804BAF44  38 80 00 00 */	li r4, 0
/* 804BAF48  4B DA D1 69 */	bl __dt__13cBgS_PolyInfoFv
/* 804BAF4C  7F E0 07 35 */	extsh. r0, r31
/* 804BAF50  40 81 00 0C */	ble lbl_804BAF5C
/* 804BAF54  7F C3 F3 78 */	mr r3, r30
/* 804BAF58  4B E1 3D E5 */	bl __dl__FPv
lbl_804BAF5C:
/* 804BAF5C  7F C3 F3 78 */	mr r3, r30
/* 804BAF60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BAF64  83 C1 00 08 */	lwz r30, 8(r1)
/* 804BAF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BAF6C  7C 08 03 A6 */	mtlr r0
/* 804BAF70  38 21 00 10 */	addi r1, r1, 0x10
/* 804BAF74  4E 80 00 20 */	blr 
