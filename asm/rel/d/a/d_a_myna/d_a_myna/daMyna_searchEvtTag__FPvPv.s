lbl_80945E0C:
/* 80945E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80945E10  7C 08 02 A6 */	mflr r0
/* 80945E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80945E18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80945E1C  7C 7F 1B 78 */	mr r31, r3
/* 80945E20  4B 6D 2E C0 */	b fopAc_IsActor__FPv
/* 80945E24  2C 03 00 00 */	cmpwi r3, 0
/* 80945E28  41 82 00 40 */	beq lbl_80945E68
/* 80945E2C  A8 1F 00 08 */	lha r0, 8(r31)
/* 80945E30  2C 00 02 D2 */	cmpwi r0, 0x2d2
/* 80945E34  40 82 00 34 */	bne lbl_80945E68
/* 80945E38  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80945E3C  54 00 47 3F */	rlwinm. r0, r0, 8, 0x1c, 0x1f
/* 80945E40  40 82 00 10 */	bne lbl_80945E50
/* 80945E44  3C 60 80 95 */	lis r3, daMyna_evtTagActor0@ha
/* 80945E48  93 E3 BA C8 */	stw r31, daMyna_evtTagActor0@l(r3)
/* 80945E4C  48 00 00 14 */	b lbl_80945E60
lbl_80945E50:
/* 80945E50  28 00 00 01 */	cmplwi r0, 1
/* 80945E54  40 82 00 0C */	bne lbl_80945E60
/* 80945E58  3C 60 80 95 */	lis r3, daMyna_evtTagActor1@ha
/* 80945E5C  93 E3 BA CC */	stw r31, daMyna_evtTagActor1@l(r3)
lbl_80945E60:
/* 80945E60  38 60 00 00 */	li r3, 0
/* 80945E64  48 00 00 08 */	b lbl_80945E6C
lbl_80945E68:
/* 80945E68  38 60 00 00 */	li r3, 0
lbl_80945E6C:
/* 80945E6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80945E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80945E74  7C 08 03 A6 */	mtlr r0
/* 80945E78  38 21 00 10 */	addi r1, r1, 0x10
/* 80945E7C  4E 80 00 20 */	blr 
