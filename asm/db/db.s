.include "macros.inc"

.section .text, "ax" # 80346398


.global DBInit
DBInit:
/* 80346398 003432D8  3C 80 80 00 */	lis r4, 0x80000040@ha
/* 8034639C 003432DC  38 04 00 40 */	addi r0, r4, 0x80000040@l
.global __DBExceptionDestination
/* 803463A0 003432E0  3C 60 80 34 */	lis r3, __DBExceptionDestination@ha
/* 803463A4 003432E4  90 0D 91 88 */	stw r0, lbl_80451708-_SDA_BASE_(r13)
.global __DBExceptionDestination
/* 803463A8 003432E8  38 63 64 08 */	addi r3, r3, __DBExceptionDestination@l
/* 803463AC 003432EC  3C 03 80 00 */	addis r0, r3, 0x8000
/* 803463B0 003432F0  90 04 00 48 */	stw r0, 0x48(r4)
/* 803463B4 003432F4  38 00 00 01 */	li r0, 1
/* 803463B8 003432F8  90 0D 91 8C */	stw r0, lbl_8045170C-_SDA_BASE_(r13)
/* 803463BC 003432FC  4E 80 00 20 */	blr 
.global __DBExceptionDestinationAux
__DBExceptionDestinationAux:
/* 803463C0 00343300  7C 08 02 A6 */	mflr r0
/* 803463C4 00343304  3C 60 80 3D */	lis r3, lbl_803D1368@ha
/* 803463C8 00343308  90 01 00 04 */	stw r0, 4(r1)
/* 803463CC 0034330C  38 63 13 68 */	addi r3, r3, lbl_803D1368@l
/* 803463D0 00343310  4C C6 31 82 */	crclr 6
/* 803463D4 00343314  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803463D8 00343318  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803463DC 0034331C  80 80 00 C0 */	lwz r4, 0xc0(0)
/* 803463E0 00343320  3F E4 80 00 */	addis r31, r4, 0x8000
/* 803463E4 00343324  4B CC 06 D9 */	bl OSReport
/* 803463E8 00343328  7F E3 FB 78 */	mr r3, r31
/* 803463EC 0034332C  4B FF 5C F5 */	bl OSDumpContext
/* 803463F0 00343330  4B FF 39 11 */	bl PPCHalt
/* 803463F4 00343334  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803463F8 00343338  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803463FC 0034333C  38 21 00 18 */	addi r1, r1, 0x18
/* 80346400 00343340  7C 08 03 A6 */	mtlr r0
/* 80346404 00343344  4E 80 00 20 */	blr 
.global __DBExceptionDestination
__DBExceptionDestination:
/* 80346408 00343348  7C 60 00 A6 */	mfmsr r3
/* 8034640C 0034334C  60 63 00 30 */	ori r3, r3, 0x30
/* 80346410 00343350  7C 60 01 24 */	mtmsr r3
.global __DBExceptionDestinationAux
/* 80346414 00343354  4B FF FF AC */	b __DBExceptionDestinationAux

.global __DBIsExceptionMarked
__DBIsExceptionMarked:
/* 80346418 00343358  80 8D 91 88 */	lwz r4, lbl_80451708-_SDA_BASE_(r13)
/* 8034641C 0034335C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80346420 00343360  38 60 00 01 */	li r3, 1
/* 80346424 00343364  80 84 00 04 */	lwz r4, 4(r4)
/* 80346428 00343368  7C 60 00 30 */	slw r0, r3, r0
/* 8034642C 0034336C  7C 83 00 38 */	and r3, r4, r0
/* 80346430 00343370  4E 80 00 20 */	blr 

.global DBPrintf
DBPrintf:
/* 80346434 00343374  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80346438 00343378  40 86 00 24 */	bne cr1, lbl_8034645C
/* 8034643C 0034337C  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80346440 00343380  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80346444 00343384  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80346448 00343388  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8034644C 0034338C  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80346450 00343390  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80346454 00343394  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80346458 00343398  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8034645C:
/* 8034645C 0034339C  90 61 00 08 */	stw r3, 8(r1)
/* 80346460 003433A0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80346464 003433A4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80346468 003433A8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8034646C 003433AC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80346470 003433B0  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80346474 003433B4  91 21 00 20 */	stw r9, 0x20(r1)
/* 80346478 003433B8  91 41 00 24 */	stw r10, 0x24(r1)
/* 8034647C 003433BC  38 21 00 70 */	addi r1, r1, 0x70
/* 80346480 003433C0  4E 80 00 20 */	blr 

