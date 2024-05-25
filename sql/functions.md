# SQL some useful functions

## Length

```bash
select length('Hello, my name is');
17
```

## Trim

```bash
select trim('  Hello, my name is  ');
'Hello, my name is'
````

## Concat

```bash
select concat(' Hello, ', 'my name is ', 'Paul');
'Hello, my name is Paul'
```

## Upper

```bash
select upper('Hello, my name is Paul');
'HELLO, MY NAME IS PAUL'
```

## Lower

```bash
select lower('Hello, my name is Paul');
'hello, my name is paul'
```

## Initcap

```bash
select initcap('paul anderson');
'Paul Anderson'
```

## Abs

```bash
select abs(-25)
25
```

## Round

```bash
select round(2.4)
2

select round(2.6)
3
```

## Ceil

```bash
select ceil(5.4)
6

select ceil(5.6)
6

select ceil(6)
6
```

## Floor

```bash
select ceil(5.4)
5

select ceil(5.6)
5

select ceil(6)
6
```

## Sign

```bash
select sign(-5)
-1

select sign(0)
0

select sign(5)
1
```

## Mod

Devuelve el residuo

```bash
select mod(18,4)
2
```

## Current_date

```bash
select current_date;
2024-01-29
```

## Extract

```bash
SELECT EXTRACT(MONTH FROM "2017-06-15");
6
```

## COALESCE

```bash
SELECT COALESCE(NULL, 5, 2, 'W3Schools.com');
5
```

## GREATEST

```bash
SELECT GREATEST(3, 12, 34, 8, 25);
34
```

## LEAST

```bash
SELECT LEAST(3, 12, 34, 8, 25);
3
```

## IF

```bash
SELECT IF(500<1000, "YES", "NO");
'YES'
```

## RAND

Return a random decimal number (no seed value - so it returns a completely random number >= 0 and <1):

```bash
SELECT RAND();
0.2923145343477973
```
