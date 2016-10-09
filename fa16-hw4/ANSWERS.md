## Questions

1. What is the difference between new and create for a model?
New doesn't execute SQL statements. Create is a combination of new and save! and actually puts it in the database.

2. What command combined with new will emulate the same behavior as create?
save!

3. What is the default integer column that exists on every table but we did NOT define?
id

4. What single line of ruby code can insert a cat with the name "Kira" in the database?
Cat.create(:name => "Kira")

5. How did you like this homework in comparison with the previous homeworks?
On par. But a pointer to something for erb would have really helped.
