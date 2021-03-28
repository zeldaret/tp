lbl_80AD3FF4:
/* 80AD3FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD3FF8  7C 08 02 A6 */	mflr r0
/* 80AD3FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD4000  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD4004  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD4008  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD400C  7C 9E 23 78 */	mr r30, r4
/* 80AD4010  41 82 00 C4 */	beq lbl_80AD40D4
/* 80AD4014  3C 60 80 AD */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80AD4018  38 03 55 00 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80AD401C  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80AD4020  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80AD4024  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80AD4028  38 84 3B 74 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AD402C  38 A0 00 0C */	li r5, 0xc
/* 80AD4030  38 C0 00 03 */	li r6, 3
/* 80AD4034  4B 88 DC B4 */	b __destroy_arr
/* 80AD4038  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80AD403C  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80AD4040  38 84 3B 74 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AD4044  38 A0 00 0C */	li r5, 0xc
/* 80AD4048  38 C0 00 03 */	li r6, 3
/* 80AD404C  4B 88 DC 9C */	b __destroy_arr
/* 80AD4050  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80AD4054  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80AD4058  38 84 3B 74 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AD405C  38 A0 00 0C */	li r5, 0xc
/* 80AD4060  38 C0 00 03 */	li r6, 3
/* 80AD4064  4B 88 DC 84 */	b __destroy_arr
/* 80AD4068  38 7F 00 78 */	addi r3, r31, 0x78
/* 80AD406C  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80AD4070  38 84 3B 74 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AD4074  38 A0 00 0C */	li r5, 0xc
/* 80AD4078  38 C0 00 03 */	li r6, 3
/* 80AD407C  4B 88 DC 6C */	b __destroy_arr
/* 80AD4080  38 7F 00 54 */	addi r3, r31, 0x54
/* 80AD4084  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80AD4088  38 84 3B 74 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AD408C  38 A0 00 0C */	li r5, 0xc
/* 80AD4090  38 C0 00 03 */	li r6, 3
/* 80AD4094  4B 88 DC 54 */	b __destroy_arr
/* 80AD4098  38 7F 00 30 */	addi r3, r31, 0x30
/* 80AD409C  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80AD40A0  38 84 3B 74 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AD40A4  38 A0 00 0C */	li r5, 0xc
/* 80AD40A8  38 C0 00 03 */	li r6, 3
/* 80AD40AC  4B 88 DC 3C */	b __destroy_arr
/* 80AD40B0  28 1F 00 00 */	cmplwi r31, 0
/* 80AD40B4  41 82 00 10 */	beq lbl_80AD40C4
/* 80AD40B8  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AD40BC  38 03 55 0C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AD40C0  90 1F 00 04 */	stw r0, 4(r31)
lbl_80AD40C4:
/* 80AD40C4  7F C0 07 35 */	extsh. r0, r30
/* 80AD40C8  40 81 00 0C */	ble lbl_80AD40D4
/* 80AD40CC  7F E3 FB 78 */	mr r3, r31
/* 80AD40D0  4B 7F AC 6C */	b __dl__FPv
lbl_80AD40D4:
/* 80AD40D4  7F E3 FB 78 */	mr r3, r31
/* 80AD40D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD40DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD40E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD40E4  7C 08 03 A6 */	mtlr r0
/* 80AD40E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD40EC  4E 80 00 20 */	blr 
