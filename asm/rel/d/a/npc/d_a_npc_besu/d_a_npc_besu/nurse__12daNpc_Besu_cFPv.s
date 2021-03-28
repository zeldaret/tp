lbl_8053CBB8:
/* 8053CBB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053CBBC  7C 08 02 A6 */	mflr r0
/* 8053CBC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053CBC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053CBC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8053CBCC  7C 7F 1B 78 */	mr r31, r3
/* 8053CBD0  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 8053CBD4  2C 00 00 02 */	cmpwi r0, 2
/* 8053CBD8  41 82 00 B0 */	beq lbl_8053CC88
/* 8053CBDC  40 80 03 80 */	bge lbl_8053CF5C
/* 8053CBE0  2C 00 00 00 */	cmpwi r0, 0
/* 8053CBE4  40 80 00 0C */	bge lbl_8053CBF0
/* 8053CBE8  48 00 03 74 */	b lbl_8053CF5C
/* 8053CBEC  48 00 03 70 */	b lbl_8053CF5C
lbl_8053CBF0:
/* 8053CBF0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8053CBF4  2C 00 00 15 */	cmpwi r0, 0x15
/* 8053CBF8  41 82 00 30 */	beq lbl_8053CC28
/* 8053CBFC  2C 00 00 07 */	cmpwi r0, 7
/* 8053CC00  41 82 00 28 */	beq lbl_8053CC28
/* 8053CC04  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 8053CC08  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8053CC0C  4B C0 8C 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CC10  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8053CC14  38 00 00 07 */	li r0, 7
/* 8053CC18  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8053CC1C  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053CC20  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053CC24  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8053CC28:
/* 8053CC28  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8053CC2C  2C 00 00 17 */	cmpwi r0, 0x17
/* 8053CC30  41 82 00 30 */	beq lbl_8053CC60
/* 8053CC34  2C 00 00 0D */	cmpwi r0, 0xd
/* 8053CC38  41 82 00 28 */	beq lbl_8053CC60
/* 8053CC3C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8053CC40  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8053CC44  4B C0 8C 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CC48  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8053CC4C  38 00 00 0D */	li r0, 0xd
/* 8053CC50  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8053CC54  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053CC58  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053CC5C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8053CC60:
/* 8053CC60  38 60 00 00 */	li r3, 0
/* 8053CC64  B0 7F 0E 1E */	sth r3, 0xe1e(r31)
/* 8053CC68  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 8053CC6C  28 00 00 08 */	cmplwi r0, 8
/* 8053CC70  40 82 00 10 */	bne lbl_8053CC80
/* 8053CC74  38 00 00 01 */	li r0, 1
/* 8053CC78  90 1F 11 20 */	stw r0, 0x1120(r31)
/* 8053CC7C  90 7F 11 24 */	stw r3, 0x1124(r31)
lbl_8053CC80:
/* 8053CC80  38 00 00 02 */	li r0, 2
/* 8053CC84  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8053CC88:
/* 8053CC88  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8053CC8C  2C 00 00 00 */	cmpwi r0, 0
/* 8053CC90  41 82 00 28 */	beq lbl_8053CCB8
/* 8053CC94  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8053CC98  4B C0 8A 64 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053CC9C  38 00 00 00 */	li r0, 0
/* 8053CCA0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8053CCA4  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053CCA8  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053CCAC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8053CCB0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8053CCB4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8053CCB8:
/* 8053CCB8  38 00 00 00 */	li r0, 0
/* 8053CCBC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8053CCC0  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 8053CCC4  60 00 00 04 */	ori r0, r0, 4
/* 8053CCC8  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 8053CCCC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8053CCD0  2C 00 00 15 */	cmpwi r0, 0x15
/* 8053CCD4  41 82 00 E8 */	beq lbl_8053CDBC
/* 8053CCD8  40 80 00 10 */	bge lbl_8053CCE8
/* 8053CCDC  2C 00 00 0D */	cmpwi r0, 0xd
/* 8053CCE0  41 82 00 14 */	beq lbl_8053CCF4
/* 8053CCE4  48 00 01 48 */	b lbl_8053CE2C
lbl_8053CCE8:
/* 8053CCE8  2C 00 00 17 */	cmpwi r0, 0x17
/* 8053CCEC  41 82 00 D0 */	beq lbl_8053CDBC
/* 8053CCF0  48 00 01 3C */	b lbl_8053CE2C
lbl_8053CCF4:
/* 8053CCF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053CCF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053CCFC  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8053CD00  7F C3 F3 78 */	mr r3, r30
/* 8053CD04  4B B0 B6 E4 */	b getRunEventName__16dEvent_manager_cFv
/* 8053CD08  3C 80 80 54 */	lis r4, struct_8053E908+0x0@ha
/* 8053CD0C  38 84 E9 08 */	addi r4, r4, struct_8053E908+0x0@l
/* 8053CD10  38 84 02 18 */	addi r4, r4, 0x218
/* 8053CD14  4B E2 BC 80 */	b strcmp
/* 8053CD18  2C 03 00 00 */	cmpwi r3, 0
/* 8053CD1C  41 82 01 10 */	beq lbl_8053CE2C
/* 8053CD20  7F C3 F3 78 */	mr r3, r30
/* 8053CD24  4B B0 B6 C4 */	b getRunEventName__16dEvent_manager_cFv
/* 8053CD28  3C 80 80 54 */	lis r4, struct_8053E908+0x0@ha
/* 8053CD2C  38 84 E9 08 */	addi r4, r4, struct_8053E908+0x0@l
/* 8053CD30  38 84 02 35 */	addi r4, r4, 0x235
/* 8053CD34  4B E2 BC 60 */	b strcmp
/* 8053CD38  2C 03 00 00 */	cmpwi r3, 0
/* 8053CD3C  41 82 00 F0 */	beq lbl_8053CE2C
/* 8053CD40  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 8053CD44  28 00 00 08 */	cmplwi r0, 8
/* 8053CD48  41 82 00 E4 */	beq lbl_8053CE2C
/* 8053CD4C  A0 1F 0E 1E */	lhz r0, 0xe1e(r31)
/* 8053CD50  28 00 00 02 */	cmplwi r0, 2
/* 8053CD54  41 80 00 D8 */	blt lbl_8053CE2C
/* 8053CD58  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8053CD5C  2C 00 00 12 */	cmpwi r0, 0x12
/* 8053CD60  41 82 00 28 */	beq lbl_8053CD88
/* 8053CD64  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 8053CD68  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8053CD6C  4B C0 8B 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CD70  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8053CD74  38 00 00 12 */	li r0, 0x12
/* 8053CD78  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8053CD7C  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053CD80  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053CD84  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8053CD88:
/* 8053CD88  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8053CD8C  2C 00 00 15 */	cmpwi r0, 0x15
/* 8053CD90  41 82 00 9C */	beq lbl_8053CE2C
/* 8053CD94  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8053CD98  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8053CD9C  4B C0 8A FC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CDA0  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8053CDA4  38 00 00 15 */	li r0, 0x15
/* 8053CDA8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8053CDAC  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053CDB0  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053CDB4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 8053CDB8  48 00 00 74 */	b lbl_8053CE2C
lbl_8053CDBC:
/* 8053CDBC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8053CDC0  4B C0 8C 64 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 8053CDC4  2C 03 00 00 */	cmpwi r3, 0
/* 8053CDC8  41 82 00 64 */	beq lbl_8053CE2C
/* 8053CDCC  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8053CDD0  2C 00 00 07 */	cmpwi r0, 7
/* 8053CDD4  41 82 00 28 */	beq lbl_8053CDFC
/* 8053CDD8  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 8053CDDC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8053CDE0  4B C0 8A B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CDE4  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8053CDE8  38 00 00 07 */	li r0, 7
/* 8053CDEC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8053CDF0  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053CDF4  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053CDF8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8053CDFC:
/* 8053CDFC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8053CE00  2C 00 00 0D */	cmpwi r0, 0xd
/* 8053CE04  41 82 00 28 */	beq lbl_8053CE2C
/* 8053CE08  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8053CE0C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8053CE10  4B C0 8A 88 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CE14  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8053CE18  38 00 00 0D */	li r0, 0xd
/* 8053CE1C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8053CE20  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053CE24  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053CE28  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8053CE2C:
/* 8053CE2C  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 8053CE30  28 00 00 08 */	cmplwi r0, 8
/* 8053CE34  40 82 01 28 */	bne lbl_8053CF5C
/* 8053CE38  80 1F 11 20 */	lwz r0, 0x1120(r31)
/* 8053CE3C  2C 00 00 00 */	cmpwi r0, 0
/* 8053CE40  41 82 00 8C */	beq lbl_8053CECC
/* 8053CE44  38 7F 11 20 */	addi r3, r31, 0x1120
/* 8053CE48  48 00 14 ED */	bl func_8053E334
/* 8053CE4C  38 7F 11 24 */	addi r3, r31, 0x1124
/* 8053CE50  48 00 14 E5 */	bl func_8053E334
/* 8053CE54  80 1F 11 20 */	lwz r0, 0x1120(r31)
/* 8053CE58  2C 00 00 00 */	cmpwi r0, 0
/* 8053CE5C  40 82 01 00 */	bne lbl_8053CF5C
/* 8053CE60  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8053CE64  2C 00 00 07 */	cmpwi r0, 7
/* 8053CE68  41 82 00 28 */	beq lbl_8053CE90
/* 8053CE6C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 8053CE70  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8053CE74  4B C0 8A 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CE78  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8053CE7C  38 00 00 07 */	li r0, 7
/* 8053CE80  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8053CE84  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053CE88  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053CE8C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8053CE90:
/* 8053CE90  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8053CE94  2C 00 00 0D */	cmpwi r0, 0xd
/* 8053CE98  41 82 00 28 */	beq lbl_8053CEC0
/* 8053CE9C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8053CEA0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8053CEA4  4B C0 89 F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CEA8  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8053CEAC  38 00 00 0D */	li r0, 0xd
/* 8053CEB0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8053CEB4  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053CEB8  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053CEBC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8053CEC0:
/* 8053CEC0  38 00 00 5C */	li r0, 0x5c
/* 8053CEC4  90 1F 11 24 */	stw r0, 0x1124(r31)
/* 8053CEC8  48 00 00 94 */	b lbl_8053CF5C
lbl_8053CECC:
/* 8053CECC  80 1F 11 24 */	lwz r0, 0x1124(r31)
/* 8053CED0  2C 00 00 00 */	cmpwi r0, 0
/* 8053CED4  41 82 00 88 */	beq lbl_8053CF5C
/* 8053CED8  38 7F 11 20 */	addi r3, r31, 0x1120
/* 8053CEDC  48 00 14 59 */	bl func_8053E334
/* 8053CEE0  38 7F 11 24 */	addi r3, r31, 0x1124
/* 8053CEE4  48 00 14 51 */	bl func_8053E334
/* 8053CEE8  80 1F 11 24 */	lwz r0, 0x1124(r31)
/* 8053CEEC  2C 00 00 00 */	cmpwi r0, 0
/* 8053CEF0  40 82 00 6C */	bne lbl_8053CF5C
/* 8053CEF4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8053CEF8  2C 00 00 04 */	cmpwi r0, 4
/* 8053CEFC  41 82 00 28 */	beq lbl_8053CF24
/* 8053CF00  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 8053CF04  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8053CF08  4B C0 89 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CF0C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8053CF10  38 00 00 04 */	li r0, 4
/* 8053CF14  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8053CF18  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053CF1C  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053CF20  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8053CF24:
/* 8053CF24  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8053CF28  2C 00 00 0E */	cmpwi r0, 0xe
/* 8053CF2C  41 82 00 28 */	beq lbl_8053CF54
/* 8053CF30  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8053CF34  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8053CF38  4B C0 89 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CF3C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8053CF40  38 00 00 0E */	li r0, 0xe
/* 8053CF44  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8053CF48  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053CF4C  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053CF50  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8053CF54:
/* 8053CF54  38 00 00 5C */	li r0, 0x5c
/* 8053CF58  90 1F 11 20 */	stw r0, 0x1120(r31)
lbl_8053CF5C:
/* 8053CF5C  38 60 00 01 */	li r3, 1
/* 8053CF60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053CF64  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053CF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053CF6C  7C 08 03 A6 */	mtlr r0
/* 8053CF70  38 21 00 10 */	addi r1, r1, 0x10
/* 8053CF74  4E 80 00 20 */	blr 
