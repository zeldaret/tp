lbl_801BF9E0:
/* 801BF9E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BF9E4  7C 08 02 A6 */	mflr r0
/* 801BF9E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BF9EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BF9F0  93 C1 00 08 */	stw r30, 8(r1)
/* 801BF9F4  7C 7E 1B 78 */	mr r30, r3
/* 801BF9F8  8B E3 01 7D */	lbz r31, 0x17d(r3)
/* 801BF9FC  80 63 00 08 */	lwz r3, 8(r3)
/* 801BFA00  88 03 0D D4 */	lbz r0, 0xdd4(r3)
/* 801BFA04  7C 00 07 74 */	extsb r0, r0
/* 801BFA08  2C 00 FF 9D */	cmpwi r0, -99
/* 801BFA0C  40 82 00 18 */	bne lbl_801BFA24
/* 801BFA10  88 03 0D D5 */	lbz r0, 0xdd5(r3)
/* 801BFA14  28 00 00 FF */	cmplwi r0, 0xff
/* 801BFA18  40 82 00 0C */	bne lbl_801BFA24
/* 801BFA1C  80 7E 00 F0 */	lwz r3, 0xf0(r30)
/* 801BFA20  4B E7 27 7D */	bl checkTrigger__9STControlFv
lbl_801BFA24:
/* 801BFA24  7F C3 F3 78 */	mr r3, r30
/* 801BFA28  88 1E 01 7D */	lbz r0, 0x17d(r30)
/* 801BFA2C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801BFA30  3C 80 80 3C */	lis r4, floor_move_process@ha
/* 801BFA34  38 04 C9 9C */	addi r0, r4, floor_move_process@l
/* 801BFA38  7D 80 2A 14 */	add r12, r0, r5
/* 801BFA3C  48 1A 26 49 */	bl __ptmf_scall
/* 801BFA40  60 00 00 00 */	nop 
/* 801BFA44  88 1E 01 7D */	lbz r0, 0x17d(r30)
/* 801BFA48  7C 00 F8 40 */	cmplw r0, r31
/* 801BFA4C  41 82 00 20 */	beq lbl_801BFA6C
/* 801BFA50  7F C3 F3 78 */	mr r3, r30
/* 801BFA54  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801BFA58  3C 80 80 3C */	lis r4, floor_init_process@ha
/* 801BFA5C  38 04 C9 6C */	addi r0, r4, floor_init_process@l
/* 801BFA60  7D 80 2A 14 */	add r12, r0, r5
/* 801BFA64  48 1A 26 21 */	bl __ptmf_scall
/* 801BFA68  60 00 00 00 */	nop 
lbl_801BFA6C:
/* 801BFA6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BFA70  83 C1 00 08 */	lwz r30, 8(r1)
/* 801BFA74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BFA78  7C 08 03 A6 */	mtlr r0
/* 801BFA7C  38 21 00 10 */	addi r1, r1, 0x10
/* 801BFA80  4E 80 00 20 */	blr 
