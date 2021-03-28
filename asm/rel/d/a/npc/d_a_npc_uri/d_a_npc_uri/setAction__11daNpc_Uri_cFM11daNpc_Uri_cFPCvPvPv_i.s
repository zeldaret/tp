lbl_80B287C0:
/* 80B287C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B287C4  7C 08 02 A6 */	mflr r0
/* 80B287C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B287CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B287D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B287D4  7C 7E 1B 78 */	mr r30, r3
/* 80B287D8  7C 9F 23 78 */	mr r31, r4
/* 80B287DC  38 00 00 03 */	li r0, 3
/* 80B287E0  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80B287E4  38 7E 0F CC */	addi r3, r30, 0xfcc
/* 80B287E8  4B 83 98 30 */	b __ptmf_test
/* 80B287EC  2C 03 00 00 */	cmpwi r3, 0
/* 80B287F0  41 82 00 18 */	beq lbl_80B28808
/* 80B287F4  7F C3 F3 78 */	mr r3, r30
/* 80B287F8  38 80 00 00 */	li r4, 0
/* 80B287FC  39 9E 0F CC */	addi r12, r30, 0xfcc
/* 80B28800  4B 83 98 84 */	b __ptmf_scall
/* 80B28804  60 00 00 00 */	nop 
lbl_80B28808:
/* 80B28808  38 00 00 00 */	li r0, 0
/* 80B2880C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B28810  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B28814  80 1F 00 04 */	lwz r0, 4(r31)
/* 80B28818  90 7E 0F CC */	stw r3, 0xfcc(r30)
/* 80B2881C  90 1E 0F D0 */	stw r0, 0xfd0(r30)
/* 80B28820  80 1F 00 08 */	lwz r0, 8(r31)
/* 80B28824  90 1E 0F D4 */	stw r0, 0xfd4(r30)
/* 80B28828  38 7E 0F CC */	addi r3, r30, 0xfcc
/* 80B2882C  4B 83 97 EC */	b __ptmf_test
/* 80B28830  2C 03 00 00 */	cmpwi r3, 0
/* 80B28834  41 82 00 18 */	beq lbl_80B2884C
/* 80B28838  7F C3 F3 78 */	mr r3, r30
/* 80B2883C  38 80 00 00 */	li r4, 0
/* 80B28840  39 9E 0F CC */	addi r12, r30, 0xfcc
/* 80B28844  4B 83 98 40 */	b __ptmf_scall
/* 80B28848  60 00 00 00 */	nop 
lbl_80B2884C:
/* 80B2884C  38 60 00 01 */	li r3, 1
/* 80B28850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B28854  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B28858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2885C  7C 08 03 A6 */	mtlr r0
/* 80B28860  38 21 00 10 */	addi r1, r1, 0x10
/* 80B28864  4E 80 00 20 */	blr 
