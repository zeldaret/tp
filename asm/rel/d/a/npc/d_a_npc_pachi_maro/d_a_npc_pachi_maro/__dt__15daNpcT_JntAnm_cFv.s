lbl_80A9AF54:
/* 80A9AF54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9AF58  7C 08 02 A6 */	mflr r0
/* 80A9AF5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9AF60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9AF64  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9AF68  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9AF6C  7C 9E 23 78 */	mr r30, r4
/* 80A9AF70  41 82 00 C4 */	beq lbl_80A9B034
/* 80A9AF74  3C 60 80 AA */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A9AF78  38 03 C0 84 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A9AF7C  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80A9AF80  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80A9AF84  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha
/* 80A9AF88  38 84 A9 C0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A9AF8C  38 A0 00 0C */	li r5, 0xc
/* 80A9AF90  38 C0 00 03 */	li r6, 3
/* 80A9AF94  4B 8C 6D 54 */	b __destroy_arr
/* 80A9AF98  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A9AF9C  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha
/* 80A9AFA0  38 84 A9 C0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A9AFA4  38 A0 00 0C */	li r5, 0xc
/* 80A9AFA8  38 C0 00 03 */	li r6, 3
/* 80A9AFAC  4B 8C 6D 3C */	b __destroy_arr
/* 80A9AFB0  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80A9AFB4  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha
/* 80A9AFB8  38 84 A9 C0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A9AFBC  38 A0 00 0C */	li r5, 0xc
/* 80A9AFC0  38 C0 00 03 */	li r6, 3
/* 80A9AFC4  4B 8C 6D 24 */	b __destroy_arr
/* 80A9AFC8  38 7F 00 78 */	addi r3, r31, 0x78
/* 80A9AFCC  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha
/* 80A9AFD0  38 84 A9 C0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A9AFD4  38 A0 00 0C */	li r5, 0xc
/* 80A9AFD8  38 C0 00 03 */	li r6, 3
/* 80A9AFDC  4B 8C 6D 0C */	b __destroy_arr
/* 80A9AFE0  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A9AFE4  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha
/* 80A9AFE8  38 84 A9 C0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A9AFEC  38 A0 00 0C */	li r5, 0xc
/* 80A9AFF0  38 C0 00 03 */	li r6, 3
/* 80A9AFF4  4B 8C 6C F4 */	b __destroy_arr
/* 80A9AFF8  38 7F 00 30 */	addi r3, r31, 0x30
/* 80A9AFFC  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha
/* 80A9B000  38 84 A9 C0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A9B004  38 A0 00 0C */	li r5, 0xc
/* 80A9B008  38 C0 00 03 */	li r6, 3
/* 80A9B00C  4B 8C 6C DC */	b __destroy_arr
/* 80A9B010  28 1F 00 00 */	cmplwi r31, 0
/* 80A9B014  41 82 00 10 */	beq lbl_80A9B024
/* 80A9B018  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A9B01C  38 03 C0 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A9B020  90 1F 00 04 */	stw r0, 4(r31)
lbl_80A9B024:
/* 80A9B024  7F C0 07 35 */	extsh. r0, r30
/* 80A9B028  40 81 00 0C */	ble lbl_80A9B034
/* 80A9B02C  7F E3 FB 78 */	mr r3, r31
/* 80A9B030  4B 83 3D 0C */	b __dl__FPv
lbl_80A9B034:
/* 80A9B034  7F E3 FB 78 */	mr r3, r31
/* 80A9B038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9B03C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A9B040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9B044  7C 08 03 A6 */	mtlr r0
/* 80A9B048  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9B04C  4E 80 00 20 */	blr 
