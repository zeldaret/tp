lbl_80C52FF8:
/* 80C52FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C52FFC  7C 08 02 A6 */	mflr r0
/* 80C53000  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C53004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C53008  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5300C  7C 7F 1B 78 */	mr r31, r3
/* 80C53010  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C53014  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C53018  40 82 00 C0 */	bne lbl_80C530D8
/* 80C5301C  7F E0 FB 79 */	or. r0, r31, r31
/* 80C53020  41 82 00 AC */	beq lbl_80C530CC
/* 80C53024  7C 1E 03 78 */	mr r30, r0
/* 80C53028  4B 3C 5B 3C */	b __ct__10fopAc_ac_cFv
/* 80C5302C  3C 60 80 C5 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 80C53030  38 03 34 24 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 80C53034  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80C53038  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha
/* 80C5303C  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l
/* 80C53040  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80C53044  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C53048  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C5304C  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80C53050  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80C53054  4B 43 07 0C */	b __ct__10dCcD_GSttsFv
/* 80C53058  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C5305C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C53060  90 7E 05 F4 */	stw r3, 0x5f4(r30)
/* 80C53064  38 03 00 20 */	addi r0, r3, 0x20
/* 80C53068  90 1E 05 F8 */	stw r0, 0x5f8(r30)
/* 80C5306C  38 7E 06 18 */	addi r3, r30, 0x618
/* 80C53070  3C 80 80 C5 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80C53074  38 84 31 44 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80C53078  3C A0 80 C5 */	lis r5, __dt__8dCcD_SphFv@ha
/* 80C5307C  38 A5 2F 2C */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80C53080  38 C0 01 38 */	li r6, 0x138
/* 80C53084  38 E0 00 0D */	li r7, 0xd
/* 80C53088  4B 70 EC D8 */	b __construct_array
/* 80C5308C  38 7E 15 F0 */	addi r3, r30, 0x15f0
/* 80C53090  3C 80 80 C5 */	lis r4, __ct__4cXyzFv@ha
/* 80C53094  38 84 31 40 */	addi r4, r4, __ct__4cXyzFv@l
/* 80C53098  3C A0 80 C5 */	lis r5, __dt__4cXyzFv@ha
/* 80C5309C  38 A5 28 20 */	addi r5, r5, __dt__4cXyzFv@l
/* 80C530A0  38 C0 00 0C */	li r6, 0xc
/* 80C530A4  38 E0 00 0D */	li r7, 0xd
/* 80C530A8  4B 70 EC B8 */	b __construct_array
/* 80C530AC  38 7E 16 8C */	addi r3, r30, 0x168c
/* 80C530B0  3C 80 80 C5 */	lis r4, __ct__4cXyzFv@ha
/* 80C530B4  38 84 31 40 */	addi r4, r4, __ct__4cXyzFv@l
/* 80C530B8  3C A0 80 C5 */	lis r5, __dt__4cXyzFv@ha
/* 80C530BC  38 A5 28 20 */	addi r5, r5, __dt__4cXyzFv@l
/* 80C530C0  38 C0 00 0C */	li r6, 0xc
/* 80C530C4  38 E0 00 0D */	li r7, 0xd
/* 80C530C8  4B 70 EC 98 */	b __construct_array
lbl_80C530CC:
/* 80C530CC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C530D0  60 00 00 08 */	ori r0, r0, 8
/* 80C530D4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C530D8:
/* 80C530D8  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 80C530DC  3C 80 80 C5 */	lis r4, l_arcName@ha
/* 80C530E0  38 84 33 CC */	addi r4, r4, l_arcName@l
/* 80C530E4  80 84 00 00 */	lwz r4, 0(r4)
/* 80C530E8  4B 3D 9D D4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C530EC  7C 7E 1B 78 */	mr r30, r3
/* 80C530F0  2C 1E 00 04 */	cmpwi r30, 4
/* 80C530F4  40 82 00 30 */	bne lbl_80C53124
/* 80C530F8  7F E3 FB 78 */	mr r3, r31
/* 80C530FC  3C 80 80 C5 */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha
/* 80C53100  38 84 2C C8 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l
/* 80C53104  38 A0 06 C0 */	li r5, 0x6c0
/* 80C53108  4B 3C 73 A8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C5310C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C53110  40 82 00 0C */	bne lbl_80C5311C
/* 80C53114  3B C0 00 05 */	li r30, 5
/* 80C53118  48 00 00 0C */	b lbl_80C53124
lbl_80C5311C:
/* 80C5311C  7F E3 FB 78 */	mr r3, r31
/* 80C53120  4B FF F0 D9 */	bl create_init__14daObjLndRope_cFv
lbl_80C53124:
/* 80C53124  7F C3 F3 78 */	mr r3, r30
/* 80C53128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5312C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C53130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C53134  7C 08 03 A6 */	mtlr r0
/* 80C53138  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5313C  4E 80 00 20 */	blr 
